/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IDelayedLabelDecorator
 *  org.eclipse.jface.viewers.ILabelDecorator
 *  org.eclipse.jface.viewers.ILightweightLabelDecorator
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IDelayedLabelDecorator;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ILightweightLabelDecorator;

public interface IDecoratorManager
extends IDelayedLabelDecorator {
    public ILabelDecorator getLabelDecorator();

    public IBaseLabelProvider getBaseLabelProvider(String var1);

    public ILabelDecorator getLabelDecorator(String var1);

    public ILightweightLabelDecorator getLightweightLabelDecorator(String var1);

    public boolean getEnabled(String var1);

    public void setEnabled(String var1, boolean var2) throws CoreException;

    public void update(String var1);
}

