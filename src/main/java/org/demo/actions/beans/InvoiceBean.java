package org.demo.actions.beans;

import java.util.Date;

public class InvoiceBean {

    private String subject;
    private Date dateFrom;
    private Date dateTo;
    private Double amount;
    private double vatRate = 0.21;


    public Date getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(Date dateFrom) {
        this.dateFrom = dateFrom;
    }

    public Date getDateTo() {
        return dateTo;
    }

    public void setDateTo(Date dateTo) {
        this.dateTo = dateTo;
    }

    public String getSubject() {return subject;}
    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Double getAmount() {
        if (this.amount == null) {
            return this.amount;
        }
        return getTotalWithVAT();

    }
    public void setAmount(Double amount) {this.amount = amount;}

    public double getTotalWithVAT() {
        return amount + (amount * vatRate);
    }

}
