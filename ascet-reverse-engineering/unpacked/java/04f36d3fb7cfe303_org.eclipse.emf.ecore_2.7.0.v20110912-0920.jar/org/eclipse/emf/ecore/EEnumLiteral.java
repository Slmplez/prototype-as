/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.ENamedElement;

public interface EEnumLiteral
extends ENamedElement,
Enumerator {
    public int getValue();

    public void setValue(int var1);

    public Enumerator getInstance();

    public void setInstance(Enumerator var1);

    public String getLiteral();

    public void setLiteral(String var1);

    public EEnum getEEnum();
}

