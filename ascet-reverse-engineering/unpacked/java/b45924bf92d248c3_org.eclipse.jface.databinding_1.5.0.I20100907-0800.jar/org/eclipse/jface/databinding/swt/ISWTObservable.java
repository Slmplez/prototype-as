/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.IObservable
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.databinding.swt;

import org.eclipse.core.databinding.observable.IObservable;
import org.eclipse.swt.widgets.Widget;

public interface ISWTObservable
extends IObservable {
    public Widget getWidget();
}

