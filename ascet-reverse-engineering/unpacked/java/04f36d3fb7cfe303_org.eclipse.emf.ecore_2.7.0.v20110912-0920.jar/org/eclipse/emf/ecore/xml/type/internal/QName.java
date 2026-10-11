/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type.internal;

import org.eclipse.emf.ecore.xml.type.InvalidDatatypeValueException;
import org.eclipse.emf.ecore.xml.type.internal.DataValue;

public final class QName
extends javax.xml.namespace.QName {
    private static final long serialVersionUID = 1L;
    private String prefix;

    public QName(String qname) {
        super(null, qname.indexOf(58) != -1 ? qname.substring(qname.indexOf(58) + 1) : qname, qname.indexOf(58) != -1 ? qname.substring(0, qname.indexOf(58)) : "");
        this.setPrefix(super.getPrefix());
        if (this.prefix.length() > 0 && !DataValue.XMLChar.isValidNCName(this.prefix)) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1: invalid QName: " + qname);
        }
        if (!DataValue.XMLChar.isValidNCName(this.getLocalPart())) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1: invalid QName: " + qname);
        }
    }

    public QName(String namespaceURI, String localPart, String prefix) {
        prefix = prefix == null ? "" : prefix;
        super(namespaceURI, localPart, prefix);
        this.setPrefix(prefix);
        if (prefix.length() > 0 && !DataValue.XMLChar.isValidNCName(prefix)) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1: invalid QName: " + prefix);
        }
        if (!DataValue.XMLChar.isValidNCName(localPart)) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1: invalid QName: " + localPart);
        }
    }

    public String getPrefix() {
        return this.prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix == null ? "" : prefix;
    }
}

