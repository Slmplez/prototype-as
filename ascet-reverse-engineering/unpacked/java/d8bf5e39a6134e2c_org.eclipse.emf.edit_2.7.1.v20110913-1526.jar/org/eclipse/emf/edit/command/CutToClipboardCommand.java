/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 */
package org.eclipse.emf.edit.command;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.RemoveCommand;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CutToClipboardCommand
extends CommandWrapper {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_CutToClipboardCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_CutToClipboardCommand_description");
    protected EditingDomain domain;
    protected Collection<Object> oldClipboard;

    public static Command create(EditingDomain domain, Object value) {
        if (domain == null) {
            return new CutToClipboardCommand(domain, RemoveCommand.create(domain, value));
        }
        return domain.createCommand(CutToClipboardCommand.class, new CommandParameter(null, null, Collections.singleton(value)));
    }

    public static Command create(EditingDomain domain, Object owner, Object feature, Object value) {
        if (domain == null) {
            return new CutToClipboardCommand(domain, RemoveCommand.create(domain, owner, feature, value));
        }
        return domain.createCommand(CutToClipboardCommand.class, new CommandParameter(owner, feature, Collections.singleton(value)));
    }

    public static Command create(EditingDomain domain, Collection<?> collection) {
        if (domain == null) {
            return new CutToClipboardCommand(domain, RemoveCommand.create(domain, collection));
        }
        return domain.createCommand(CutToClipboardCommand.class, new CommandParameter(null, null, collection));
    }

    public static Command create(EditingDomain domain, Object owner, Object feature, Collection<?> collection) {
        if (domain == null) {
            return new CutToClipboardCommand(domain, RemoveCommand.create(domain, owner, feature, collection));
        }
        return domain.createCommand(CutToClipboardCommand.class, new CommandParameter(owner, feature, collection));
    }

    public CutToClipboardCommand(EditingDomain domain, Command command) {
        super(LABEL, DESCRIPTION, command);
        this.domain = domain;
    }

    public void execute() {
        super.execute();
        if (this.domain != null) {
            this.oldClipboard = this.domain.getClipboard();
            this.domain.setClipboard(new ArrayList<Object>(this.command.getResult()));
        }
    }

    public void undo() {
        super.undo();
        if (this.domain != null) {
            this.domain.setClipboard(this.oldClipboard);
        }
    }

    public void redo() {
        super.redo();
        if (this.domain != null) {
            this.oldClipboard = this.domain.getClipboard();
            this.domain.setClipboard(new ArrayList<Object>(this.command.getResult()));
        }
    }

    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (domain: " + this.domain + ")");
        result.append(" (oldClipboard: " + this.oldClipboard + ")");
        return result.toString();
    }
}

