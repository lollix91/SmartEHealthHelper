package com.example.ehealth.ui.dashboard;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.TextView;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.widget.Toast;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.UUID;

import com.example.ehealth.R;
import com.example.ehealth.Scelta;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.SyncHttpClient;

import cz.msebera.android.httpclient.Header;

public class DashboardFragment extends Fragment {

    private DashboardViewModel dashboardViewModel;

    public UUID uuid = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");

    BluetoothAdapter mBluetoothAdapter = null;
    BluetoothSocket mmSocket = null;
    BluetoothDevice mmDevice = null;
    InputStream inStream;
    double presMin = 60.0;
    double presMax = 120.0;
    double temperatura = 37.0;

    private final static String DHEART_INTENT = "com.dheartcare.dheart.RECORD_ECG";
    private ActivityResultLauncher<Intent> activityResultLauncher;



    private static final String RESULT_BPM = "BPM"; // int
    private static final String RESULT_PR = "PR"; // int
    private static final String RESULT_QRS = "QRS"; // int
    private static final String RESULT_RR = "RR"; // int
    private static final String RESULT_QT = "QT"; // int
    private static final String RESULT_QTC = "QTC"; // int
    public static final String RECORD_EXTERNAL_SPEED = "SPEED"; //int
    public static final String RECORD_EXTERNAL_LENGTH = "LENGTH"; //int
    public static final String RECORD_EXTERNAL_ZOOM = "ZOOM"; //int
    public static final String RECORD_EXTERNAL_AUTOSTART = "AUTOSTART"; //boot
    public static final String RECORD_EXTERNAL_FREQUENCY = "FREQUENCY"; //int
    public static final String RECORD_EXTERNAL_SYMPTOM = "SYMPTOM"; //string
    private static final String RESULT_RAW_DATA_D1 = "dataD1"; // float[]
    private static final String RESULT_RAW_DATA_D2 = "dataD2"; // float[]
    private static final String RESULT_RAW_DATA_D3 = "dataD3"; // float[]
    private static final String RESULT_RAW_DATA_V1 = "dataV1"; // float[]
    private static final String RESULT_RAW_DATA_V2 = "dataV2"; // float[]
    private static final String RESULT_RAW_DATA_V3 = "dataV3"; // float[]
    private static final String RESULT_RAW_DATA_V4 = "dataV4"; // float[]
    private static final String RESULT_RAW_DATA_VS = "dataV5"; // float[]
    private static final String RESULT_RAW_DATA_V6 = "dataV6"; // float[]
    private static final String RESULT_RAW_DATAAVR = "dataAVR"; // float[]
    private static final String RESULT_RAW_DATA_AVL = "dataAVL"; // float[]
    private static final String RESULT_RAW_DATA_AVF = "dataAVF"; // float[]
    public static final String RECORD_EXTERNAL_PDF_PATH = "PDFPATH"; //string

    private boolean firstStart = true;

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        dashboardViewModel =
                new ViewModelProvider(this).get(DashboardViewModel.class);
        View root = inflater.inflate(R.layout.fragment_dashboard, container, false);

        SharedPreferences sharedPref = getActivity().getPreferences(Context.MODE_PRIVATE);
        String savedName = sharedPref.getString(getString(R.string.nomeCognomeUtente), "Nome e Cognome");
        String savedPeso = sharedPref.getString(getString(R.string.pesoUtente), "70");
        String savedEta = sharedPref.getString(getString(R.string.etaUtente), "80");


        int stepPres = 1;
        double stepTemp = 0.2;
        int minPresMin = 0;
        int maxPresMin = 200;
        int minPresMax = 40;
        int maxPresMax = 300;
        int minTemp = 30;
        int maxTemp = 45;

        SeekBar barPresMinima = (SeekBar) root.findViewById(R.id.presMinima);
        SeekBar barPresMassima = (SeekBar) root.findViewById(R.id.presMassima);
        SeekBar barTemperatura = (SeekBar) root.findViewById(R.id.temperatura);

        TextView personName = (TextView) root.findViewById(R.id.personName);
        personName.setText(savedName);

        EditText peso = (EditText) root.findViewById(R.id.pesoUtente);
        peso.setText(savedPeso);

        EditText eta = (EditText) root.findViewById(R.id.etaUtente);
        eta.setText(savedEta);

// Ex :
// If you want values from 3 to 5 with a step of 0.1 (3, 3.1, 3.2, ..., 5)
// this means that you have 21 possible values in the seekbar.
// So the range of the seek bar will be [0 ; (5-3)/0.1 = 20].
        barPresMinima.setMax((int) ((maxPresMin - minPresMin) / stepPres));
        barPresMinima.setOnSeekBarChangeListener(
                new SeekBar.OnSeekBarChangeListener() {
                    @Override
                    public void onStopTrackingTouch(SeekBar seekBar) {
                    }

                    @Override
                    public void onStartTrackingTouch(SeekBar seekBar) {
                    }

                    @Override
                    public void onProgressChanged(SeekBar seekBar, int progress,
                                                  boolean fromUser) {
                        // Ex :
                        // And finally when you want to retrieve the value in the range you
                        // wanted in the first place -> [3-5]
                        //
                        // if progress = 13 -> value = 3 + (13 * 0.1) = 4.3
                        TextView valPresMinima = (TextView) root.findViewById(R.id.valPresMinima);
                        double value = minPresMin + (progress * stepPres);
                        valPresMinima.setText("Pressione Minima: " + Double.toString(value));
                        presMin = value;
                    }
                }
        );

        barPresMassima.setMax((int) ((maxPresMax - minPresMax) / stepPres));
        barPresMassima.setOnSeekBarChangeListener(
                new SeekBar.OnSeekBarChangeListener() {
                    @Override
                    public void onStopTrackingTouch(SeekBar seekBar) {
                    }

                    @Override
                    public void onStartTrackingTouch(SeekBar seekBar) {
                    }

                    @Override
                    public void onProgressChanged(SeekBar seekBar, int progress,
                                                  boolean fromUser) {
                        // Ex :
                        // And finally when you want to retrieve the value in the range you
                        // wanted in the first place -> [3-5]
                        //
                        // if progress = 13 -> value = 3 + (13 * 0.1) = 4.3
                        TextView valPresMassima = (TextView) root.findViewById(R.id.valPresMassima);
                        double value = minPresMax + (progress * stepPres);
                        valPresMassima.setText("Pressione Massima: " + Double.toString(value));
                        presMax = value;
                    }
                }
        );

        barTemperatura.setMax((int) ((maxTemp - minTemp) / stepTemp));
        barTemperatura.setOnSeekBarChangeListener(
                new SeekBar.OnSeekBarChangeListener() {
                    @Override
                    public void onStopTrackingTouch(SeekBar seekBar) {
                    }

                    @Override
                    public void onStartTrackingTouch(SeekBar seekBar) {
                    }

                    @Override
                    public void onProgressChanged(SeekBar seekBar, int progress,
                                                  boolean fromUser) {
                        // Ex :
                        // And finally when you want to retrieve the value in the range you
                        // wanted in the first place -> [3-5]
                        //
                        // if progress = 13 -> value = 3 + (13 * 0.1) = 4.3
                        TextView valTemperatura = (TextView) root.findViewById(R.id.valTemperatura);
                        double value = minTemp + (progress * stepTemp);
                        valTemperatura.setText("Temperatura: " + Double.toString(value));
                        temperatura = value;
                    }
                }
        );


        Button inviaPressione = (Button) root.findViewById(R.id.inviaPressione);
        inviaPressione.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {


                Runnable runnable = new Runnable() {
                    public void run() {

                        SharedPreferences.Editor editor = sharedPref.edit();
                        editor.putString(getString(R.string.pesoUtente), peso.getText().toString());
                        editor.putString("80", eta.getText().toString());
                        editor.apply();


                        SyncHttpClient client = new SyncHttpClient();
                        client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&presminima=" + presMin + "&presmassima=" + presMax + "&temperatura=" + temperatura + "&peso=" + peso.getText() + "&eta=" + eta.getText(), new AsyncHttpResponseHandler() {


                            @Override
                            public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
                                System.err.println("Richiesta inviata");
                            }

                            @Override
                            public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
                                System.err.println("Errore: " + error.toString());
                            }
                        });

                    }
                };

                Thread thread = new Thread(runnable);
                thread.start();


            }
        });


        Button connettiPulsossimetro = (Button) root.findViewById(R.id.connettiPulsossimetro);
        connettiPulsossimetro.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                //Devo prima controllare se sono gia connesso
                mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
                if (mBluetoothAdapter == null) {//controlla se il devices è supportato
                    // IL BLUETOOTH NON E' SUPPORTATO
                    Toast.makeText(root.getContext(), "BlueTooth non supportato", Toast.LENGTH_LONG).show();
                } else {
                    if (!mBluetoothAdapter.isEnabled())//controlla che sia abilitato il devices
                    {
                        //  NON E' ABILITATO IL BLUETOOTH
                        Toast.makeText(root.getContext(), "BlueTooth non abilitato", Toast.LENGTH_LONG).show();

                    } else {
                        //  IL BLUETOOTH E' ABILITATO
                        mmDevice = mBluetoothAdapter.getRemoteDevice("98:D3:31:FB:17:56");//MAC address del bluetooth di arduino
                        try {
                            mmSocket = mmDevice.createRfcommSocketToServiceRecord(uuid);
                        } catch (IOException e) {
                        }

                        try {
                            // CONNETTE IL DISPOSITIVO TRAMITE IL SOCKET mmSocket
                            mmSocket.connect();
                            inStream = mmSocket.getInputStream();

                            Toast.makeText(root.getContext(), "Wearable connesso", Toast.LENGTH_SHORT).show();//bluetooth è connesso
                            ((TextView) root.findViewById(R.id.statoPulsossimetro)).setText("Wearable: Connesso");

                        } catch (IOException closeException) {

                            try {
                                //TENTA DI CHIUDERE IL SOCKET
                                mmSocket.close();
                            } catch (IOException ceXC) {
                            }
                            Toast.makeText(root.getContext(), "Connessione non riuscita", Toast.LENGTH_SHORT).show();
                        }

                    }
                }
            }
        });


        Runnable runnable = new Runnable() {
            public void run() {
                while (true) {
                    try {
                        while (!mmSocket.isConnected()) ;
                        byte[] buffer = new byte[1024];
                        int bytes = 0;

                        while (true) {
                            buffer[bytes] = (byte) inStream.read();
                            String readMessage;
                            if (buffer[bytes] == '\n') {
                                readMessage = new String(buffer, 0, bytes);

                                String[] parts = readMessage.split(":");

                                if (parts[0].equals("ERROR")) {
                                    System.err.println(readMessage);
                                    Toast.makeText(root.getContext(), "Error: " + parts[1], Toast.LENGTH_SHORT).show();
                                    //TROVARE UN MODO PER MOSTRARE LE COSE DAI THREAD, VEDI: HANDLER
                                } else if (parts[0].equals("MESSAGE")) {
                                    System.err.println(readMessage);
                                    if (parts.length > 4) {

                                        String hr = parts[2];
                                        String hrvalid = parts[4];
                                        String spo2 = parts[6];
                                        String spo2valid = parts[8];

                                        if (hrvalid.equals("1") && spo2valid.equals("1")) {
                                            System.err.println("INVIO 2 RICHIESTE");
                                            SyncHttpClient client = new SyncHttpClient();
                                            client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&battito=" + hr + "&saturazione=" + spo2, new AsyncHttpResponseHandler() {


                                                @Override
                                                public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
                                                    System.err.println("Richiesta inviata");
                                                }

                                                @Override
                                                public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
                                                    System.err.println("Errore: " + error.toString());
                                                }
                                            });


                                        } else if (hrvalid.equals("1")) {//il battito cardiaco è valido, lo salvo sul server

                                            SyncHttpClient client = new SyncHttpClient();
                                            client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&battito=" + hr, new AsyncHttpResponseHandler() {


                                                @Override
                                                public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
                                                    System.err.println("Richiesta inviata");
                                                }

                                                @Override
                                                public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
                                                    System.err.println("Errore: " + error.toString());
                                                }
                                            });

                                        } else if (spo2valid.equals("1")) {// l'ossigeno è valido, lo salvo sul server

                                            SyncHttpClient client = new SyncHttpClient();
                                            client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&saturazione=" + spo2, new AsyncHttpResponseHandler() {


                                                @Override
                                                public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
                                                    System.err.println("Richiesta inviata");
                                                }

                                                @Override
                                                public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
                                                    System.err.println("Errore: " + error.toString());
                                                }
                                            });


                                        }
                                    }

                                }

                                //IN READ MESSAGE HO IL MESSAGGIO DA ARDUINO
                                //LO LEGGO E, SE è CORRETTO, LO INOLTRO AL SERVER
                                //SE INIZIA CON ERROR STAMPO IL TOASE
                                //SE INIZIA CON MESSAGE LO MANDO AL SERVER
                                bytes = 0;
                            } else {
                                bytes++;
                            }
                        }
                        // Send the obtained bytes to the UI Activity
                    } catch (Exception e) {
                        //System.err.println("Non ancora connesso");
                    }
                }


            }
        };

        Thread thread = new Thread(runnable);
        thread.start();



        activityResultLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(),
                result-> {
                    Log.d("App2AppExample", "result " + (result.getResultCode() == Activity.RESULT_OK));
                    if(result.getResultCode()== Activity.RESULT_OK) {
                        parseResult(result.getData(), peso);
                        System.err.println("DATIOK");
                    }
                    else {
                        System.err.println("ERRORE!");
                        System.err.println(result.describeContents());
                    }
        });


        //openDHeart();



        return root;
    }

    @Override
    public void onResume() {
        super.onResume();
        Log.d("App2AppExample", "onResume");

        //Intent intent = new Intent(getActivity(), Scelta.class);
        //intent.putExtra(EXTRA_MESSAGE, message);
        //startActivity(intent);


        if (firstStart) {
            firstStart = false;
            openDHeart();
        }
        else {
            Log.d("MyApp", "Intent launched");

            //Intent intent = new Intent(getActivity(), Scelta.class);
            //intent.putExtra(EXTRA_MESSAGE, message);
            //startActivity(intent);

        }

    }

    private void openDHeart() {
        Log.d("App2AppExample", "openDHeart");
        System.err.println("LANCIATA1");
        Intent intent = new Intent(DHEART_INTENT);
        activityResultLauncher.launch(intent);
        System.err.println("LANCIATA");
    }


    private void parseResult(Intent intent, EditText peso) {
        Log.d("App2AppExample", "parseResult");
        Bundle extras = intent.getExtras();

        Float bpm = (Float) extras.get(RESULT_BPM);
        System.err.println("bpm " + bpm);
        Log.d("App2AppExample", "bpm " + bpm);

        float[] rawD1Array = extras.getFloatArray(RESULT_RAW_DATA_D1);
        System.err.println("rawD1Array " + Arrays.toString(rawD1Array));
        Log.d("App2AppExample", "rawD1Array " + Arrays.toString(rawD1Array));
    }

}