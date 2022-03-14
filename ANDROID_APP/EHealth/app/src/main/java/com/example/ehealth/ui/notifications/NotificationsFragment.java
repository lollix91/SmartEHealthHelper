package com.example.ehealth.ui.notifications;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.provider.SyncStateContract;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;

import com.example.ehealth.R;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.SyncHttpClient;

import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.ContentBody;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HttpEntity;
import cz.msebera.android.httpclient.HttpResponse;
import cz.msebera.android.httpclient.client.HttpClient;
import cz.msebera.android.httpclient.client.methods.HttpPost;
import cz.msebera.android.httpclient.entity.mime.content.FileBody;
import cz.msebera.android.httpclient.impl.client.DefaultHttpClient;

public class NotificationsFragment extends Fragment {

    private static final int REQUEST_EXTERNAL_STORAGE = 1;
    private static String[] PERMISSIONS_STORAGE = {
            Manifest.permission.READ_EXTERNAL_STORAGE,
            Manifest.permission.WRITE_EXTERNAL_STORAGE
    };
    private NotificationsViewModel notificationsViewModel;

    public static void verifyStoragePermissions(Activity activity) {
        // Check if we have write permission
        int permission = ActivityCompat.checkSelfPermission(activity, Manifest.permission.WRITE_EXTERNAL_STORAGE);

        if (permission != PackageManager.PERMISSION_GRANTED) {
            // We don't have permission so prompt the user
            ActivityCompat.requestPermissions(
                    activity,
                    PERMISSIONS_STORAGE,
                    REQUEST_EXTERNAL_STORAGE
            );
        }

        permission = ActivityCompat.checkSelfPermission(activity, Manifest.permission.READ_EXTERNAL_STORAGE);

        if (permission != PackageManager.PERMISSION_GRANTED) {
            // We don't have permission so prompt the user
            ActivityCompat.requestPermissions(
                    activity,
                    PERMISSIONS_STORAGE,
                    REQUEST_EXTERNAL_STORAGE
            );
        }
    }



    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        notificationsViewModel =
                new ViewModelProvider(this).get(NotificationsViewModel.class);
        View root = inflater.inflate(R.layout.fragment_notifications, container, false);

        verifyStoragePermissions(this.getActivity());

        SharedPreferences sharedPref = getActivity().getPreferences(Context.MODE_PRIVATE);
        String savedName = sharedPref.getString(getString(R.string.nomeCognomeUtente), "Nome e Cognome");

        TextView personName = (TextView) root.findViewById(R.id.nomePersona);
        personName.setText(savedName);


        Button patologiePregresse = (Button) root.findViewById(R.id.patologiePregresse);
        patologiePregresse.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {

                String[] listItems = {"Diabete", "Ipertensione", "Obesita", "Tumore"};

                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setTitle("Seleziona le patologie pregresse");

                boolean[] checkedItems = new boolean[]{false, false, false, false}; //this will checked the items when user open the dialog
                builder.setMultiChoiceItems(listItems, checkedItems, new DialogInterface.OnMultiChoiceClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                        //Toast.makeText(getContext(), "Position: " + which + " Value: " + listItems[which] + " State: " + (isChecked ? "checked" : "unchecked"), Toast.LENGTH_LONG).show();
                    }
                });

                builder.setPositiveButton("Salva", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        Runnable runnable = new Runnable(){
                            public void run() {

                                //cancello patologie pregresse
                                SyncHttpClient client2 = new SyncHttpClient();
                                client2.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&cancellapatologia=1", new AsyncHttpResponseHandler() {
                                    @Override
                                    public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
                                        System.err.println("Richiesta inviata");
                                    }
                                    @Override
                                    public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
                                        System.err.println("Errore: " + error.toString());
                                    }
                                });



                                for(int i=0; i<checkedItems.length; i++) {
                                    if (checkedItems[i] == true) {

                                        SyncHttpClient client = new SyncHttpClient();
                                        client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&patologia=" + listItems[i], new AsyncHttpResponseHandler() {


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
                        };

                        Thread thread = new Thread(runnable);
                        thread.start();

                        dialog.dismiss();
                    }
                });

                AlertDialog dialog = builder.create();
                dialog.show();
            }
        });




        Button sensazioni = (Button) root.findViewById(R.id.sensazioni);
        sensazioni.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {

                String[] listItems = {"Affanno", "Dol Petto", "Dol Braccio SX", "Dol Braccia", "Vertigini", "Mal di testa"};

                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setTitle("Seleziona le sensazioni correnti");

                boolean[] checkedItems = new boolean[]{false, false, false, false, false, false}; //this will checked the items when user open the dialog
                builder.setMultiChoiceItems(listItems, checkedItems, new DialogInterface.OnMultiChoiceClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                        //Toast.makeText(getContext(), "Position: " + which + " Value: " + listItems[which] + " State: " + (isChecked ? "checked" : "unchecked"), Toast.LENGTH_LONG).show();
                    }
                });

                builder.setPositiveButton("Salva", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        Runnable runnable = new Runnable(){
                            public void run() {

                                //cancello patologie pregresse
                                SyncHttpClient client2 = new SyncHttpClient();
                                client2.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&cancellasensazione=1", new AsyncHttpResponseHandler() {
                                    @Override
                                    public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
                                        System.err.println("Richiesta inviata");
                                    }
                                    @Override
                                    public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
                                        System.err.println("Errore: " + error.toString());
                                    }
                                });



                                for(int i=0; i<checkedItems.length; i++) {
                                    if (checkedItems[i] == true) {

                                        SyncHttpClient client = new SyncHttpClient();
                                        client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&sensazione=" + listItems[i], new AsyncHttpResponseHandler() {


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
                        };

                        Thread thread = new Thread(runnable);
                        thread.start();

                        dialog.dismiss();
                    }
                });

                AlertDialog dialog = builder.create();
                dialog.show();
            }
        });




        Button statocorrente = (Button) root.findViewById(R.id.statocorrente);
        statocorrente.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {

                String[] listItems = {"Benissimo", "Bene", "Neutro", "Male", "Malissimo"};

                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setTitle("Selezioni come si sente");

                boolean[] checkedItems = new boolean[]{false, false, false, false, false}; //this will checked the items when user open the dialog
                builder.setMultiChoiceItems(listItems, checkedItems, new DialogInterface.OnMultiChoiceClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                        //Toast.makeText(getContext(), "Position: " + which + " Value: " + listItems[which] + " State: " + (isChecked ? "checked" : "unchecked"), Toast.LENGTH_LONG).show();
                    }
                });

                builder.setPositiveButton("Salva", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        Runnable runnable = new Runnable(){
                            public void run() {

                                //cancello patologie pregresse
                                SyncHttpClient client2 = new SyncHttpClient();
                                client2.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&cancellastato=1", new AsyncHttpResponseHandler() {
                                    @Override
                                    public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
                                        System.err.println("Richiesta inviata");
                                    }
                                    @Override
                                    public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
                                        System.err.println("Errore: " + error.toString());
                                    }
                                });



                                for(int i=0; i<checkedItems.length; i++) {
                                    if (checkedItems[i] == true) {

                                        SyncHttpClient client = new SyncHttpClient();
                                        client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome=" + personName.getText() + "&stato=" + listItems[i], new AsyncHttpResponseHandler() {


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
                        };

                        Thread thread = new Thread(runnable);
                        thread.start();

                        dialog.dismiss();
                    }
                });

                AlertDialog dialog = builder.create();
                dialog.show();
            }
        });





/*
        Spinner spin = (Spinner) root.findViewById(R.id.spinner);

        Button inviaDati = (Button) root.findViewById(R.id.inviaDati);
        inviaDati.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {

                SharedPreferences.Editor editor = sharedPref.edit();
                editor.putString(getString(R.string.pesoUtente), peso.getText().toString());
                editor.apply();


                Runnable runnable = new Runnable(){
                    public void run() {

                        SyncHttpClient client = new SyncHttpClient();
                        client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome="+ personName.getText() +"&peso=" + peso.getText() + "&stato=" + spin.getSelectedItem().toString(), new AsyncHttpResponseHandler() {


                            @Override
                            public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
                                System.err.println("Richiesta inviata");
                            }

                            @Override
                            public void onFailure(int statusCode, Header[] headers, byte[] responseBody, Throwable error) {
                                System.err.println("Errore: "+error.toString());
                            }
                        });

                    }
                };

                Thread thread = new Thread(runnable);
                thread.start();


            }
        });
*/

        Button caricaViso = (Button) root.findViewById(R.id.caricaViso);
        caricaViso.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {

                Intent photoPickerIntent = new Intent(Intent.ACTION_PICK);
                photoPickerIntent.setType("image/*");
                startActivityForResult(photoPickerIntent, 1);

            }
        });

        Button caricaMano = (Button) root.findViewById(R.id.caricaMano);
        caricaMano.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {

                Intent photoPickerIntent = new Intent(Intent.ACTION_PICK);
                photoPickerIntent.setType("image/*");
                startActivityForResult(photoPickerIntent, 2);

            }
        });


        return root;
    }


    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1 || requestCode == 2)
            if (resultCode == Activity.RESULT_OK) {
                Uri selectedImage = data.getData();

                String filePath = getRealPathFromURI(selectedImage);
                String file_extn = filePath.substring(filePath.lastIndexOf(".") + 1);
                //image_name_tv.setText(filePath);

                if (file_extn.equals("img") || file_extn.equals("jpg") || file_extn.equals("jpeg") || file_extn.equals("gif") || file_extn.equals("png")) {
                    //FINE

                    SharedPreferences sharedPref = getActivity().getPreferences(Context.MODE_PRIVATE);
                    String savedName = sharedPref.getString(getString(R.string.nomeCognomeUtente), "Nome e Cognome");
//setup params
                    Map<String, String> params = new HashMap<String, String>(2);
                    params.put("nome", savedName);
                    if(requestCode == 1)
                        params.put("tipo", "fotoviso");
                    else
                        params.put("tipo", "fotomano");


                    Runnable runnable = new Runnable(){
                        public void run() {

                            try {
                                String result = multipartRequest("http://www.lorenzodelauretis.it/tesi/index.php", params, filePath, "image", "image/"+file_extn);
                                Log.e("EEEEE", result);
                                //Toast.makeText(getContext(), "Immagine Caricata", Toast.LENGTH_SHORT).show();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        }
                    };

                    Thread thread = new Thread(runnable);
                    thread.start();

                    }

                } else {
                    //NOT IN REQUIRED FORMAT
                }
            }

    public String getRealPathFromURI(Uri contentUri) {
        String res = null;
        String[] proj = { MediaStore.Images.Media.DATA };
        Cursor cursor = getContext().getContentResolver().query(contentUri, proj, null, null, null);
        if(cursor.moveToFirst()){;
            int column_index = cursor.getColumnIndexOrThrow(MediaStore.Images.Media.DATA);
            res = cursor.getString(column_index);
        }
        cursor.close();
        return res;
    }

    public String multipartRequest(String urlTo, Map<String, String> parmas, String filepath, String filefield, String fileMimeType) throws Exception {
        HttpURLConnection connection = null;
        DataOutputStream outputStream = null;
        InputStream inputStream = null;

        String twoHyphens = "--";
        String boundary = "*****" + Long.toString(System.currentTimeMillis()) + "*****";
        String lineEnd = "\r\n";

        String result = "";

        int bytesRead, bytesAvailable, bufferSize;
        byte[] buffer;
        int maxBufferSize = 1 * 1024 * 1024;

        String[] q = filepath.split("/");
        int idx = q.length - 1;

        try {
            File file = new File(filepath);
            FileInputStream fileInputStream = new FileInputStream(file);

            URL url = new URL(urlTo);
            connection = (HttpURLConnection) url.openConnection();

            connection.setDoInput(true);
            connection.setDoOutput(true);
            connection.setUseCaches(false);

            connection.setRequestMethod("POST");
            connection.setRequestProperty("Connection", "Keep-Alive");
            connection.setRequestProperty("User-Agent", "Android Multipart HTTP Client 1.0");
            connection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);

            outputStream = new DataOutputStream(connection.getOutputStream());
            outputStream.writeBytes(twoHyphens + boundary + lineEnd);
            outputStream.writeBytes("Content-Disposition: form-data; name=\"" + filefield + "\"; filename=\"" + q[idx] + "\"" + lineEnd);
            outputStream.writeBytes("Content-Type: " + fileMimeType + lineEnd);
            outputStream.writeBytes("Content-Transfer-Encoding: binary" + lineEnd);

            outputStream.writeBytes(lineEnd);

            bytesAvailable = fileInputStream.available();
            bufferSize = Math.min(bytesAvailable, maxBufferSize);
            buffer = new byte[bufferSize];

            bytesRead = fileInputStream.read(buffer, 0, bufferSize);
            while (bytesRead > 0) {
                outputStream.write(buffer, 0, bufferSize);
                bytesAvailable = fileInputStream.available();
                bufferSize = Math.min(bytesAvailable, maxBufferSize);
                bytesRead = fileInputStream.read(buffer, 0, bufferSize);
            }

            outputStream.writeBytes(lineEnd);

            // Upload POST Data
            Iterator<String> keys = parmas.keySet().iterator();
            while (keys.hasNext()) {
                String key = keys.next();
                String value = parmas.get(key);

                outputStream.writeBytes(twoHyphens + boundary + lineEnd);
                outputStream.writeBytes("Content-Disposition: form-data; name=\"" + key + "\"" + lineEnd);
                outputStream.writeBytes("Content-Type: text/plain" + lineEnd);
                outputStream.writeBytes(lineEnd);
                outputStream.writeBytes(value);
                outputStream.writeBytes(lineEnd);
            }

            outputStream.writeBytes(twoHyphens + boundary + twoHyphens + lineEnd);


            if (200 != connection.getResponseCode()) {
                throw new Exception("Failed to upload code:" + connection.getResponseCode() + " " + connection.getResponseMessage());
            }

            inputStream = connection.getInputStream();

            result = this.convertStreamToString(inputStream);

            fileInputStream.close();
            inputStream.close();
            outputStream.flush();
            outputStream.close();

            return result;
        } catch (Exception e) {
            throw new Exception(e);
        }

    }

    private String convertStreamToString(InputStream is) {
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));
        StringBuilder sb = new StringBuilder();

        String line = null;
        try {
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
    }


}