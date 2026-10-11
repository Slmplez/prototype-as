/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.edit.provider;

import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.provider.IDisposable;

public interface IWrapperItemProvider
extends IDisposable {
    public Object getValue();

    public Object getOwner();

    public EStructuralFeature getFeature();

    public int getIndex();

    public void setIndex(int var1);
}

