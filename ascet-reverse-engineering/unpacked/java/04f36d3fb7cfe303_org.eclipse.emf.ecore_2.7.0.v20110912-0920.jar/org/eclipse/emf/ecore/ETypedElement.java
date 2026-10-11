/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;

public interface ETypedElement
extends ENamedElement {
    public static final int UNBOUNDED_MULTIPLICITY = -1;
    public static final int UNSPECIFIED_MULTIPLICITY = -2;

    public boolean isOrdered();

    public void setOrdered(boolean var1);

    public boolean isUnique();

    public void setUnique(boolean var1);

    public int getLowerBound();

    public void setLowerBound(int var1);

    public int getUpperBound();

    public void setUpperBound(int var1);

    public boolean isMany();

    public boolean isRequired();

    public EClassifier getEType();

    public void setEType(EClassifier var1);

    public EGenericType getEGenericType();

    public void setEGenericType(EGenericType var1);
}

