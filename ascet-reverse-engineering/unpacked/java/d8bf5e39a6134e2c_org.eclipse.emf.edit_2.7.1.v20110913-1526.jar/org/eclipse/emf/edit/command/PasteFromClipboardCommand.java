/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.command.StrictCompoundCommand
 */
package org.eclipse.emf.edit.command;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.command.StrictCompoundCommand;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AbstractOverrideableCommand;
import org.eclipse.emf.edit.command.AddCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CopyCommand;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PasteFromClipboardCommand
extends AbstractOverrideableCommand {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_PasteFromClipboardCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_PasteFromClipboardCommand_description");
    protected StrictCompoundCommand command;
    protected Object owner;
    protected Object feature;
    protected int index;
    protected boolean optimize;

    public static Command create(EditingDomain domain, Object owner, Object feature) {
        return PasteFromClipboardCommand.create(domain, owner, feature, -1);
    }

    public static Command create(EditingDomain domain, Object owner, Object feature, int index) {
        if (domain == null) {
            return new PasteFromClipboardCommand(domain, owner, feature, index, true);
        }
        Command command = domain.createCommand(PasteFromClipboardCommand.class, new CommandParameter(owner, feature, Collections.emptyList(), index));
        return command;
    }

    public PasteFromClipboardCommand(EditingDomain domain, Object owner, Object feature, int index) {
        this(domain, owner, feature, index, true);
    }

    public PasteFromClipboardCommand(EditingDomain domain, Object owner, Object feature, int index, boolean optimize) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.feature = feature;
        this.index = index;
        this.optimize = optimize;
    }

    public Object getOwner() {
        return this.owner;
    }

    public Object getFeature() {
        return this.feature;
    }

    public int getIndex() {
        return this.index;
    }

    protected boolean prepare() {
        this.command = new StrictCompoundCommand();
        final Command copyCommand = CopyCommand.create(this.domain, this.domain.getClipboard());
        this.command.append(copyCommand);
        this.command.append((Command)new CommandWrapper(){
            protected Collection<Object> original;
            protected Collection<Object> copy;

            protected Command createCommand() {
                this.original = PasteFromClipboardCommand.this.domain.getClipboard();
                this.copy = new ArrayList<Object>(copyCommand.getResult());
                if (this.original.size() == this.copy.size()) {
                    Iterator<Object> i = this.original.iterator();
                    Iterator<Object> j = this.copy.iterator();
                    while (i.hasNext()) {
                        Object originalObject = i.next();
                        Object copyObject = j.next();
                        if (originalObject.getClass() == copyObject.getClass()) continue;
                        this.original = null;
                        break;
                    }
                }
                Command addCommand = AddCommand.create(PasteFromClipboardCommand.this.domain, PasteFromClipboardCommand.this.owner, PasteFromClipboardCommand.this.feature, this.original == null ? this.copy : this.original, PasteFromClipboardCommand.this.index);
                return addCommand;
            }

            public void execute() {
                if (this.original != null) {
                    PasteFromClipboardCommand.this.domain.setClipboard(this.copy);
                }
                super.execute();
            }

            public void undo() {
                super.undo();
                if (this.original != null) {
                    PasteFromClipboardCommand.this.domain.setClipboard(this.original);
                }
            }

            public void redo() {
                if (this.original != null) {
                    PasteFromClipboardCommand.this.domain.setClipboard(this.copy);
                }
                super.redo();
            }
        });
        boolean result = this.optimize ? this.optimizedCanExecute() : this.command.canExecute();
        return result;
    }

    protected boolean optimizedCanExecute() {
        Command addCommand = AddCommand.create(this.domain, this.owner, this.feature, this.domain.getClipboard());
        boolean result = addCommand.canExecute();
        addCommand.dispose();
        return result;
    }

    @Override
    public void doExecute() {
        if (this.command.canExecute()) {
            this.command.execute();
        }
    }

    @Override
    public void doUndo() {
        this.command.undo();
    }

    @Override
    public void doRedo() {
        this.command.redo();
    }

    @Override
    public Collection<?> doGetResult() {
        return this.command.getResult();
    }

    @Override
    public Collection<?> doGetAffectedObjects() {
        return this.command.getAffectedObjects();
    }

    @Override
    public void doDispose() {
        if (this.command != null) {
            this.command.dispose();
        }
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (domain: " + this.domain + ")");
        return result.toString();
    }
}

