package com.bookstore.project.domain;

import jakarta.persistence.GenerationType;

public @interface GenetaredValue {

    GenerationType strategy();

}
