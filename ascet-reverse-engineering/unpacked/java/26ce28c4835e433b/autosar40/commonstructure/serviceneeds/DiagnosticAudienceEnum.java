/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.serviceneeds;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum DiagnosticAudienceEnum implements Enumerator
{
    DEVELOPMENT(0, "development", "DEVELOPMENT"),
    MANUFACTURING(1, "manufacturing", "MANUFACTURING"),
    AFTER_SALES(2, "afterSales", "AFTER-SALES"),
    AFTERMAKET(3, "aftermaket", "AFTERMAKET"),
    SUPPLIER(4, "supplier", "SUPPLIER"),
    AFTERMARKET(5, "aftermarket", "AFTERMARKET");

    public static final int DEVELOPMENT_VALUE = 0;
    public static final int MANUFACTURING_VALUE = 1;
    public static final int AFTER_SALES_VALUE = 2;
    public static final int AFTERMAKET_VALUE = 3;
    public static final int SUPPLIER_VALUE = 4;
    public static final int AFTERMARKET_VALUE = 5;
    private static final DiagnosticAudienceEnum[] VALUES_ARRAY;
    public static final List<DiagnosticAudienceEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DiagnosticAudienceEnum[]{DEVELOPMENT, MANUFACTURING, AFTER_SALES, AFTERMAKET, SUPPLIER, AFTERMARKET};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DiagnosticAudienceEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DiagnosticAudienceEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DiagnosticAudienceEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DiagnosticAudienceEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DiagnosticAudienceEnum get(int value) {
        switch (value) {
            case 0: {
                return DEVELOPMENT;
            }
            case 1: {
                return MANUFACTURING;
            }
            case 2: {
                return AFTER_SALES;
            }
            case 3: {
                return AFTERMAKET;
            }
            case 4: {
                return SUPPLIER;
            }
            case 5: {
                return AFTERMARKET;
            }
        }
        return null;
    }

    private DiagnosticAudienceEnum(int value, String name, String literal) {
        this.value = value;
        this.name = name;
        this.literal = literal;
    }

    public int getValue() {
        return this.value;
    }

    public String getName() {
        return this.name;
    }

    public String getLiteral() {
        return this.literal;
    }

    public String toString() {
        return this.literal;
    }
}

