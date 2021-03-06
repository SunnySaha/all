package com.example.sunny.firebase_listview;

import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity implements  BottomNavigationView.OnNavigationItemSelectedListener{
    ListView listView;
    FirebaseDatabase database;
    DatabaseReference ref;
    ArrayList<String> list;
    ArrayAdapter<String> adapter;
    BottomNavigationView bottomNavigationView;
    Data data;
    Button register;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        database = FirebaseDatabase.getInstance();
        bottomNavigationView = findViewById(R.id.bottom_navigation_view);
        bottomNavigationView.setOnNavigationItemSelectedListener(this);
        bottomNavigationView.setSelectedItemId(R.id.coursenavigation);

       // register = findViewById(R.id.registerbutton);

        ref = database.getReference("");
        data = new Data();
        list = new ArrayList<>();
        adapter = new ArrayAdapter<String>(MainActivity.this, R.layout.list, R.id.coursename, list);
//        ref.addValueEventListener(new ValueEventListener() {
//            @Override
//            public void onDataChange(DataSnapshot dataSnapshot) {
//                for(DataSnapshot snapshot: dataSnapshot.getChildren()){
//                    data = snapshot.getValue(Data.class);
//                    list.add(String.valueOf(data));
//                }
//                listView.setAdapter(adapter);
//            }
//
//            @Override
//            public void onCancelled(DatabaseError databaseError) {
//
//            }
//        });

//        register.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View view) {
//                Intent i = new Intent(MainActivity.this, Login.class);
//                startActivity(i);
//
//            }
//        });

    }
    Course_list course_fragment = new Course_list();
    Notice_Board notice_fragment = new Notice_Board();
    Profile teacher_profile_fragment = new Profile();
    Control_panel control_panel_fragment = new Control_panel();
    Home  homePage = new Home();
    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {

        switch (menuItem.getItemId()){
            case R.id.homenavigation:
                Toast.makeText(MainActivity.this, "Intent to Main GridView Page", Toast.LENGTH_LONG).show();
                return true;
            case R.id.profilenavigation:
                getSupportFragmentManager().beginTransaction().replace(R.id.bottom_navigation_layout, teacher_profile_fragment).commit();
                return true;
            case R.id.coursenavigation:
                getSupportFragmentManager().beginTransaction().replace(R.id.bottom_navigation_layout,course_fragment).commit();
                return true;

            case R.id.controlnavigation:
                getSupportFragmentManager().beginTransaction().replace(R.id.bottom_navigation_layout, control_panel_fragment).commit();
                return true;
            case R.id.noticenavigation:
                getSupportFragmentManager().beginTransaction().replace(R.id.bottom_navigation_layout, notice_fragment).commit();
                return true;


        }
        return false;
    }


}
