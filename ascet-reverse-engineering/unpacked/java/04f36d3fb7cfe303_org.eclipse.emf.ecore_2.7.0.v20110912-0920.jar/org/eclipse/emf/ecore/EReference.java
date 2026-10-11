/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EReference
extends EStructuralFeature {
    public boolean isContainment();

    public void setContainment(boolean var1);

    public boolean isContainer();

    public boolean isResolveProxies();

    public void setResolveProxies(boolean var1);

    public EReference getEOpposite();

    public void setEOpposite(EReference var1);

    public EClass getEReferenceType();

    public EList<EAttribute> getEKeys();
}

