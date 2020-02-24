package com.example.sunny.firebase_listview;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class DeptListActivity extends AppCompatActivity {
    static String DEPT="";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dept_list);
    }

    public void CSEbtn(View view) {
        DEPT="CSE";
        startActivity(new Intent(DeptListActivity.this,MainActivity.class));
    }

    public void EEEbtn(View view) {
        DEPT="EEE";

        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }

    public void CIVILbtn(View view) {
        DEPT="Civil Engineering";

        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }

    public void ARCHITECTUREbtn(View view) {
        DEPT="Architecture";

        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }

    public void BBAbtn(View view) {
        DEPT="BBA";

        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }

    public void ENGbtn(View view) {
        DEPT="English";

        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }

    public void LAWbtn(View view) {
        DEPT="Law";

        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }

    public void THMbtn(View view) {
        DEPT="Tourism and Hospitality Management";

        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }

    public void ISLAMICSTUDIESbtn(View view) {
        DEPT="Islamic Studies";
        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }

    public void BANGLA(View view) {
        DEPT="Bangla";

        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }

    public void PUBLICHEALTHbtn(View view) {
        DEPT="Public Health";

        startActivity(new Intent(DeptListActivity.this,MainActivity.class));

    }
}
