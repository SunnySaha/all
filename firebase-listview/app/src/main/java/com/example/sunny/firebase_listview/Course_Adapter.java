package com.example.sunny.firebase_listview;

import android.content.Context;
import android.text.Layout;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;

public class Course_Adapter extends RecyclerView.Adapter<Course_Adapter.Viewholder> {
    List<String>course_list=new ArrayList<>();

    RecyclerView recyclerView;
    Context context;


    public Course_Adapter(List<String> course_list, RecyclerView recyclerView, Context context) {
        this.course_list = course_list;
        this.recyclerView = recyclerView;
        this.context = context;
        Log.e("size",""+course_list.size());
    }

    @NonNull
    @Override
    public Viewholder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view= LayoutInflater.from(context).inflate(R.layout.course_layoutt,parent,false);
        return new Viewholder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull Viewholder holder, int position) {
       holder.textView.setText(course_list.get(position));
    }

    @Override
    public int getItemCount() {
        return course_list.size();
    }

    public class Viewholder extends RecyclerView.ViewHolder implements View.OnClickListener {
        TextView textView;

        public Viewholder(@NonNull View itemView) {
            super(itemView);
            textView=itemView.findViewById(R.id.course_name_textview);
            itemView.setOnClickListener(this);

        }

        @Override
        public void onClick(View v) {
            int pos=getAdapterPosition();
            String s = course_list.get(pos);
            Toast.makeText(context, "Kham oisay "+s, Toast.LENGTH_SHORT).show();

        }
    }
}
