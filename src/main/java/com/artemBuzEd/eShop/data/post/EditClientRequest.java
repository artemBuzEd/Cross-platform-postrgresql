package com.artemBuzEd.eShop.data.post;

public record EditClientRequest(long clientId, String name, String surname, String passportData, String comment) {
}
