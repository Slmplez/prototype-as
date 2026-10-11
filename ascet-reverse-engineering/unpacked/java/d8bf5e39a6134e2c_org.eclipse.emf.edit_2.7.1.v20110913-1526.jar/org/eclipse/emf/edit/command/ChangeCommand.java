/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.AbstractCommand
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.ecore.change.ChangeDescription
 *  org.eclipse.emf.ecore.change.util.ChangeRecorder
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.emf.common.command.AbstractCommand;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.util.ChangeRecorder;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ChangeCommand
extends AbstractCommand {
    protected ChangeDescription changeDescription;
    protected Notifier notifier;
    protected Collection<Notifier> notifiers;
    protected ChangeRecorder changeRecorder;

    protected ChangeCommand(ChangeRecorder changeRecorder) {
        if (changeRecorder.isRecording()) {
            throw new IllegalStateException("The changeRecorder cannot be currently recording.");
        }
        this.changeRecorder = changeRecorder;
    }

    public ChangeCommand(ChangeRecorder changeRecorder, Notifier notifier) {
        this(changeRecorder);
        this.notifier = notifier;
    }

    public ChangeCommand(Notifier notifier) {
        this.notifier = notifier;
    }

    public ChangeCommand(ChangeRecorder changeRecorder, Collection<Notifier> notifiers) {
        this(changeRecorder);
        this.notifiers = notifiers;
    }

    public ChangeCommand(Collection<Notifier> notifiers) {
        this.notifiers = notifiers;
    }

    public void dispose() {
        this.changeRecorder = null;
        this.notifier = null;
        this.notifiers = null;
        this.changeDescription = null;
        super.dispose();
    }

    public ChangeRecorder getChangeRecorder() {
        return this.changeRecorder;
    }

    protected ChangeRecorder createChangeRecorder() {
        return new ChangeRecorder();
    }

    protected ChangeDescription getChangeDescription() {
        return this.changeDescription;
    }

    protected void setChangeDescription(ChangeDescription changeDescription) {
        this.changeDescription = changeDescription;
    }

    protected boolean prepare() {
        return this.getChangeDescription() == null;
    }

    public void execute() {
        ChangeRecorder changeRecorder = this.getChangeRecorder();
        if (changeRecorder == null) {
            changeRecorder = this.createChangeRecorder();
        }
        changeRecorder.beginRecording(this.notifier != null ? Collections.singleton(this.notifier) : this.notifiers);
        try {
            this.doExecute();
        }
        finally {
            this.setChangeDescription(changeRecorder.endRecording());
            this.disposeChangeRecorder(changeRecorder);
        }
    }

    protected abstract void doExecute();

    protected void disposeChangeRecorder(ChangeRecorder changeRecorder) {
        if (changeRecorder != this.getChangeRecorder()) {
            changeRecorder.dispose();
        }
    }

    public void undo() {
        this.getChangeDescription().applyAndReverse();
    }

    public void redo() {
        this.getChangeDescription().applyAndReverse();
    }
}

