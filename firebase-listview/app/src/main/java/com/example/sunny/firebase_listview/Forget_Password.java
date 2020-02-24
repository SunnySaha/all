package com.example.sunny.firebase_listview;

import com.google.android.material.textfield.TextInputLayout;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;

public class Forget_Password extends AppCompatActivity {

    TextInputLayout emailToReset;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_forget__password);

        emailToReset = findViewById(R.id.emailToResetPass);
        
    }
}
