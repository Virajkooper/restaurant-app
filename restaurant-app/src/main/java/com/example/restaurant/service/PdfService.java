package com.example.restaurant.service;

import com.example.restaurant.entity.Reservation;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class PdfService {


    public void generateReservationListPdf(List<Reservation> reservations, HttpServletResponse response) throws DocumentException, IOException {
        Document document = new Document();
        PdfWriter.getInstance(document, response.getOutputStream());

        document.open();

        PdfPTable table = new PdfPTable(6); // 6 columns for the reservation details

        table.addCell("Name");
        table.addCell("Email");
        table.addCell("Phone");
        table.addCell("No of Persons");
        table.addCell("Date");
        table.addCell("Time");

        for (Reservation reservation : reservations) {
            table.addCell(reservation.getName());
            table.addCell(reservation.getEmail());
            table.addCell(reservation.getPhone());
            table.addCell(String.valueOf(reservation.getPerson()));
            table.addCell(reservation.getDate().toString());
            table.addCell(reservation.getTime().toString());
        }

        table.setHorizontalAlignment(Element.ALIGN_CENTER);
        document.add(table);

        document.close();
    }
}
