/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type;

import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.xml.type.AnyType;

public interface SimpleAnyType
extends AnyType {
    public String getRawValue();

    public void setRawValue(String var1);

    public Object getValue();

    public void setValue(Object var1);

    public EDataType getInstanceType();

    public void setInstanceType(EDataType var1);
}

