/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.ETypeParameter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EClassifier
extends ENamedElement {
    public String getInstanceClassName();

    public void setInstanceClassName(String var1);

    public Class<?> getInstanceClass();

    public void setInstanceClass(Class<?> var1);

    public Object getDefaultValue();

    public String getInstanceTypeName();

    public void setInstanceTypeName(String var1);

    public EPackage getEPackage();

    public EList<ETypeParameter> getETypeParameters();

    public boolean isInstance(Object var1);

    public int getClassifierID();
}

