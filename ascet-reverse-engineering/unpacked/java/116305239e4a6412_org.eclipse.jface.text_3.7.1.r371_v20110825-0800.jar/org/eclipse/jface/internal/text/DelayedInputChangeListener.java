/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.text;

import org.eclipse.jface.internal.text.InformationControlReplacer;
import org.eclipse.jface.text.IDelayedInputChangeProvider;
import org.eclipse.jface.text.IInputChangedListener;

public final class DelayedInputChangeListener
implements IInputChangedListener {
    private final IDelayedInputChangeProvider fChangeProvider;
    private final InformationControlReplacer fInformationControlReplacer;

    public DelayedInputChangeListener(IDelayedInputChangeProvider changeProvider, InformationControlReplacer informationControlReplacer) {
        this.fChangeProvider = changeProvider;
        this.fInformationControlReplacer = informationControlReplacer;
    }

    public void inputChanged(Object newInput) {
        this.fChangeProvider.setDelayedInputChangeListener(null);
        this.fInformationControlReplacer.setDelayedInput(newInput);
    }
}

