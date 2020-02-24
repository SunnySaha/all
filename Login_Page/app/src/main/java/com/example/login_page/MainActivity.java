package com.example.login_page;

import androidx.appcompat.app.AppCompatActivity;
import io.paperdb.Paper;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import com.google.android.material.textfield.TextInputLayout;

import com.rey.material.widget.CheckBox;

public class MainActivity extends AppCompatActivity {

    TextInputLayout idInput;
    TextInputLayout emailInput;
    TextInputLayout passInput;

    private CheckBox chkBoxRememberMe;
    private Button loginbtn, forgetpass;
    String id, email, pass;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        chkBoxRememberMe = findViewById(R.id.remembermechk);
        loginbtn = findViewById(R.id.loginButton);
        idInput = findViewById(R.id.idInputLayout);
        emailInput = findViewById(R.id.emailInputLayout);
        passInput = findViewById(R.id.passInputLayout);
        forgetpass = findViewById(R.id.forgetPassButton);

        Paper.init(MainActivity.this);

        String GetUserIdKey = Paper.book().read(Prevalent.UserIdKey);
        String GetUserPasswordKey = Paper.book().read(Prevalent.UserPasswordKey);
        String GetUserEmailKey = Paper.book().read(Prevalent.UserEmailKey);

        if(GetUserIdKey != "" && GetUserEmailKey != "" && GetUserPasswordKey != ""){

            if(!TextUtils.isEmpty(GetUserIdKey) && !TextUtils.isEmpty(GetUserEmailKey) && !TextUtils.isEmpty(GetUserPasswordKey)){
                Intent i = new Intent(MainActivity.this, Home.class);
                startActivity(i);
            }
        }


        loginbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                id = idInput.getEditText().getText().toString().trim();
                pass = passInput.getEditText().getText().toString().trim();
                email = emailInput.getEditText().getText().toString().trim();
                if(chkBoxRememberMe.isChecked())
                {
                    Paper.book().write(Prevalent.UserIdKey, id);
                    Paper.book().write(Prevalent.UserEmailKey, email);
                    Paper.book().write(Prevalent.UserPasswordKey, pass);
                }

                if(!TextUtils.isEmpty(id) && !TextUtils.isEmpty(email) && !TextUtils.isEmpty(pass)){
                    Intent i = new Intent(MainActivity.this, Home.class);
                    startActivity(i);
                }


            }
        });
    }




}
