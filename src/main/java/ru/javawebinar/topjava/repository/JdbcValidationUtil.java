package ru.javawebinar.topjava.repository;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import javax.validation.Validation;
import javax.validation.Validator;
import java.util.Set;

public class JdbcValidationUtil {
    private static final Validator VALIDATOR = Validation.buildDefaultValidatorFactory().getValidator();

    public static <T> void Validate(T t) {
        Set<ConstraintViolation<T>> violations = VALIDATOR.validate(t);
        if (!violations.isEmpty()) {
            throw new ConstraintViolationException(violations);
        }

    }
}