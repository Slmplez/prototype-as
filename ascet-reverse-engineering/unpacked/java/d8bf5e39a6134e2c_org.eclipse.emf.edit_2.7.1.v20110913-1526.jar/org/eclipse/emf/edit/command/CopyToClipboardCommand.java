/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.AbstractCommand$NonDirtying
 *  org.eclipse.emf.common.command.Command
 */
package org.eclipse.emf.edit.command;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import org.eclipse.emf.common.command.AbstractCommand;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AbstractOverrideableCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CopyCommand;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CopyToClipboardCommand
extends AbstractOverrideableCommand
implements AbstractCommand.NonDirtying {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_CopyToClipboardCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_CopyToClipboardCommand_description");
    protected Collection<?> sourceObjects;
    protected Collection<Object> oldClipboard;
    protected Command copyCommand;

    public static Command create(EditingDomain domain, Collection<?> collection) {
        if (domain == null) {
            CopyToClipboardCommand command = new CopyToClipboardCommand(domain, collection);
            return command;
        }
        Command command = domain.createCommand(CopyToClipboardCommand.class, new CommandParameter(null, null, collection));
        return command;
    }

    public CopyToClipboardCommand(EditingDomain domain, Collection<?> collection) {
        super(domain, LABEL, DESCRIPTION);
        this.sourceObjects = collection;
    }

    public static Command create(EditingDomain domain, Object owner) {
        return CopyToClipboardCommand.create(domain, Collections.singleton(owner));
    }

    public Collection<?> getSourceObjects() {
        return this.sourceObjects;
    }

    protected boolean prepare() {
        this.copyCommand = CopyCommand.create(this.domain, this.sourceObjects);
        return this.copyCommand.canExecute();
    }

    @Override
    public void doExecute() {
        this.copyCommand.execute();
        this.oldClipboard = this.domain.getClipboard();
        this.domain.setClipboard(new ArrayList<Object>(this.copyCommand.getResult()));
    }

    @Override
    public void doUndo() {
        this.copyCommand.undo();
        this.domain.setClipboard(this.oldClipboard);
    }

    @Override
    public void doRedo() {
        this.copyCommand.redo();
        this.oldClipboard = this.domain.getClipboard();
        this.domain.setClipboard(new ArrayList<Object>(this.copyCommand.getResult()));
    }

    @Override
    public Collection<?> doGetResult() {
        return this.copyCommand.getResult();
    }

    @Override
    public Collection<?> doGetAffectedObjects() {
        return this.copyCommand.getAffectedObjects();
    }

    @Override
    public void doDispose() {
        if (this.copyCommand != null) {
            this.copyCommand.dispose();
        }
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (domain: " + this.domain + ")");
        result.append(" (sourceObjects: " + this.sourceObjects + ")");
        result.append(" (oldClipboard: " + this.oldClipboard + ")");
        return result.toString();
    }
}

