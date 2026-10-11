/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

public interface EFactory
extends EModelElement {
    public EPackage getEPackage();

    public void setEPackage(EPackage var1);

    public EObject create(EClass var1);

    public Object createFromString(EDataType var1, String var2);

    public String convertToString(EDataType var1, Object var2);
}

