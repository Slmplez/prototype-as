/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.IPropertyChangeListener
 */
package org.eclipse.ui.services;

import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.ui.internal.services.IEvaluationResultCache;

public interface IEvaluationReference
extends IEvaluationResultCache {
    public IPropertyChangeListener getListener();

    public String getProperty();
}

