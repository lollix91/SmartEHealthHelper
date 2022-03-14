package com.example.ehealth.ui.home;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;



import com.example.ehealth.R;
import com.example.ehealth.Scelta;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.SyncHttpClient;

import cz.msebera.android.httpclient.Header;

import static android.content.ContentValues.TAG;

public class HomeFragment extends Fragment {

    private HomeViewModel homeViewModel;



    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {
        homeViewModel =
                new ViewModelProvider(this).get(HomeViewModel.class);
        View root = inflater.inflate(R.layout.fragment_home, container, false);

        EditText nomeCognomeSalvati = (EditText) root.findViewById(R.id.nomeCognomeSalvati);
        EditText altezzaPersona = (EditText) root.findViewById(R.id.altezzaPersona);


        SharedPreferences sharedPref = getActivity().getPreferences(Context.MODE_PRIVATE);
        String savedName = sharedPref.getString(getString(R.string.nomeCognomeUtente), "Nome e Cognome");
        String savedAlt = sharedPref.getString(getString(R.string.altezzaTotale), "170");

        nomeCognomeSalvati.setText(savedName);
        altezzaPersona.setText(savedAlt);


        Button salvaEInvia = (Button) root.findViewById(R.id.salvaDati);
        salvaEInvia.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {

                SharedPreferences.Editor editor = sharedPref.edit();
                editor.putString(getString(R.string.nomeCognomeUtente), nomeCognomeSalvati.getText().toString());
                editor.putString(getString(R.string.altezzaTotale), altezzaPersona.getText().toString());
                editor.apply();

                Runnable runnable = new Runnable(){
                    public void run() {

                        SyncHttpClient client = new SyncHttpClient();
                        client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome="+ nomeCognomeSalvati.getText() +"&altezza=" + altezzaPersona.getText(), new AsyncHttpResponseHandler() {


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

        checkPlayServices();

        FirebaseMessaging.getInstance().setAutoInitEnabled(true);
        FirebaseMessaging.getInstance().getToken()
                .addOnCompleteListener(new OnCompleteListener<String>() {
                    @Override
                    public void onComplete(@NonNull Task<String> task) {
                        if (!task.isSuccessful()) {
                            Log.w(TAG, "Fetching FCM registration token failed", task.getException());
                            return;
                        }

                        // Get new FCM registration token
                        String token = task.getResult();
                        Log.e(TAG, token);

                        SharedPreferences.Editor editor = sharedPref.edit();
                        editor.putString(getString(R.string.msg_token_fmt), token);

                        Runnable runnable = new Runnable(){
                            public void run() {

                                SyncHttpClient client = new SyncHttpClient();
                                client.get("http://www.lorenzodelauretis.it/tesi/index.php?nome="+ nomeCognomeSalvati.getText() +"&token=" + token, new AsyncHttpResponseHandler() {


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



        return root;
    }


    private boolean checkPlayServices () {
        GoogleApiAvailabilityLight gApi = GoogleApiAvailabilityLight.getInstance();
        int resultCode = gApi.isGooglePlayServicesAvailable(getContext());
        if (resultCode != ConnectionResult.SUCCESS) {
            Log.d(TAG, "Errore play services");
            return false;
        }
        return true;
    }




}
