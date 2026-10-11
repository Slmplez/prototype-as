/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.ETypeParameter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EGenericType
extends EObject {
    public EGenericType getEUpperBound();

    public void setEUpperBound(EGenericType var1);

    public EList<EGenericType> getETypeArguments();

    public EClassifier getERawType();

    public EGenericType getELowerBound();

    public void setELowerBound(EGenericType var1);

    public ETypeParameter getETypeParameter();

    public void setETypeParameter(ETypeParameter var1);

    public EClassifier getEClassifier();

    public void setEClassifier(EClassifier var1);
}

