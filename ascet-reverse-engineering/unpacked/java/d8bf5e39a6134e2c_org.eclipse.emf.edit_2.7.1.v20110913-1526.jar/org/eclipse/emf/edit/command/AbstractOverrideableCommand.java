/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.AbstractCommand
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.command.AbstractCommand;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.command.ChildrenToCopyProvider;
import org.eclipse.emf.edit.command.OverrideableCommand;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractOverrideableCommand
extends AbstractCommand
implements OverrideableCommand {
    protected EditingDomain domain;
    protected Command overrideCommand;

    protected AbstractOverrideableCommand(EditingDomain domain) {
        this(domain, null, null);
    }

    protected AbstractOverrideableCommand(EditingDomain domain, String label) {
        this(domain, label, null);
    }

    protected AbstractOverrideableCommand(EditingDomain domain, String label, String description) {
        super(label, description);
        this.domain = domain;
    }

    public EditingDomain getDomain() {
        return this.domain;
    }

    @Override
    public Command getOverride() {
        return this.overrideCommand;
    }

    @Override
    public void setOverride(Command overrideCommand) {
        this.overrideCommand = overrideCommand;
    }

    public final boolean canExecute() {
        if (this.domain != null && !this.isPrepared) {
            Command newOverrideCommand = this.domain.createOverrideCommand(this);
            this.setOverride(newOverrideCommand);
        }
        boolean result = this.overrideCommand != null ? this.overrideCommand.canExecute() : this.doCanExecute();
        return result;
    }

    @Override
    public boolean doCanExecute() {
        return super.canExecute();
    }

    public final void execute() {
        if (this.overrideCommand != null) {
            this.overrideCommand.execute();
        } else {
            this.doExecute();
        }
    }

    @Override
    public abstract void doExecute();

    public final boolean canUndo() {
        boolean result = this.overrideCommand != null ? this.overrideCommand.canUndo() : this.doCanUndo();
        return result;
    }

    @Override
    public boolean doCanUndo() {
        return super.canUndo();
    }

    public final void undo() {
        if (this.overrideCommand != null) {
            this.overrideCommand.undo();
        } else {
            this.doUndo();
        }
    }

    @Override
    public abstract void doUndo();

    public final void redo() {
        if (this.overrideCommand != null) {
            this.overrideCommand.redo();
        } else {
            this.doRedo();
        }
    }

    @Override
    public abstract void doRedo();

    public final Collection<?> getResult() {
        return this.overrideCommand != null ? this.overrideCommand.getResult() : this.doGetResult();
    }

    @Override
    public Collection<?> doGetResult() {
        return super.getResult();
    }

    public final Collection<?> getAffectedObjects() {
        return this.overrideCommand != null ? this.overrideCommand.getAffectedObjects() : this.doGetAffectedObjects();
    }

    @Override
    public Collection<?> doGetAffectedObjects() {
        return super.getAffectedObjects();
    }

    public final String getLabel() {
        return this.overrideCommand != null ? this.overrideCommand.getLabel() : this.doGetLabel();
    }

    @Override
    public String doGetLabel() {
        return super.getLabel();
    }

    public final String getDescription() {
        return this.overrideCommand != null ? this.overrideCommand.getDescription() : this.doGetDescription();
    }

    @Override
    public String doGetDescription() {
        return super.getDescription();
    }

    public final void dispose() {
        if (this.overrideCommand != null) {
            this.overrideCommand.dispose();
        } else {
            this.doDispose();
        }
    }

    @Override
    public void doDispose() {
        super.dispose();
    }

    public final Collection<?> getChildrenToCopy() {
        Collection<?> result = this.overrideCommand instanceof ChildrenToCopyProvider ? ((ChildrenToCopyProvider)this.overrideCommand).getChildrenToCopy() : this.doGetChildrenToCopy();
        return result;
    }

    public Collection<?> doGetChildrenToCopy() {
        return Collections.EMPTY_LIST;
    }

    public static EList<Object> getOwnerList(EObject owner, EStructuralFeature feature) {
        return owner.eClass().getEAllStructuralFeatures().contains((Object)feature) && feature.isMany() ? (EList)owner.eGet(feature) : null;
    }

    protected void updateEMap(EObject owner, EStructuralFeature feature) {
        EObject container;
        if (owner != null && feature != null && "key".equals(feature.getName()) && feature.getEContainingClass().getInstanceClass() == Map.Entry.class && (container = owner.eContainer()) != null) {
            EReference containmentFeature = owner.eContainmentFeature();
            List list = (List)container.eGet((EStructuralFeature)containmentFeature);
            list.set(list.indexOf(owner), owner);
        }
    }

    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (domain: " + this.domain + ")");
        result.append(" (overrideCommand: " + this.overrideCommand + ")");
        return result.toString();
    }
}

