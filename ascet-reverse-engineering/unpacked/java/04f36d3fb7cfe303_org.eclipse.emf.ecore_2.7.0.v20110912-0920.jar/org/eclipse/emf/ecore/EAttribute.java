/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EStructuralFeature;

public interface EAttribute
extends EStructuralFeature {
    public boolean isID();

    public void setID(boolean var1);

    public EDataType getEAttributeType();
}

