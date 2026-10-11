/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type.internal;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Calendar;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.Duration;
import org.eclipse.emf.ecore.xml.type.internal.XMLCalendar;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;

public final class XMLDuration
extends Duration
implements Serializable {
    private static final long serialVersionUID = 1L;
    Duration duration;

    public XMLDuration(String value) {
        this.duration = XMLCalendar.datatypeFactory.newDuration(XMLTypeUtil.normalize(value, true));
    }

    public static int compare(XMLDuration value1, XMLDuration value2) {
        switch (value1.duration.compare(value2.duration)) {
            case 0: {
                return 0;
            }
            case -1: {
                return -1;
            }
            case 1: {
                return 1;
            }
        }
        return 2;
    }

    public boolean equals(Object object) {
        return object != null && this.duration.equals(object);
    }

    public int hashCode() {
        return this.duration.hashCode();
    }

    public String toString() {
        return this.duration.toString();
    }

    public Duration add(Duration rhs) {
        return this.duration.add(rhs);
    }

    public void addTo(Calendar calendar) {
        this.duration.addTo(calendar);
    }

    public int compare(Duration duration) {
        return this.duration.compare(duration);
    }

    public Number getField(DatatypeConstants.Field field) {
        return this.duration.getField(field);
    }

    public int getSign() {
        return this.duration.getSign();
    }

    public int getYears() {
        return this.duration.getYears();
    }

    public int getMonths() {
        return this.duration.getMonths();
    }

    public int getDays() {
        return this.duration.getDays();
    }

    public int getHours() {
        return this.duration.getHours();
    }

    public int getMinutes() {
        return this.duration.getMinutes();
    }

    public int getSeconds() {
        return this.duration.getSeconds();
    }

    public boolean isSet(DatatypeConstants.Field field) {
        return this.duration.isSet(field);
    }

    public Duration multiply(BigDecimal factor) {
        return this.duration.multiply(factor);
    }

    public Duration negate() {
        return this.duration.negate();
    }

    public Duration normalizeWith(Calendar startTimeInstant) {
        return this.duration.normalizeWith(startTimeInstant);
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.writeUTF(this.toString());
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        this.duration = XMLCalendar.datatypeFactory.newDuration(in.readUTF());
    }
}

