/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AbstractOverrideableCommand;
import org.eclipse.emf.edit.command.ChildrenToCopyProvider;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CopyCommand;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CreateCopyCommand
extends AbstractOverrideableCommand
implements ChildrenToCopyProvider {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_CreateCopyCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_CreateCopyCommand_description");
    protected EObject owner;
    protected EObject copy;
    protected CopyCommand.Helper copyHelper;

    public static Command create(EditingDomain domain, Object owner, CopyCommand.Helper copyHelper) {
        return domain.createCommand(CreateCopyCommand.class, new CommandParameter(owner, null, copyHelper));
    }

    public CreateCopyCommand(EditingDomain domain, EObject owner, CopyCommand.Helper copyHelper) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.copyHelper = copyHelper;
    }

    public EObject getOwner() {
        return this.owner;
    }

    public CopyCommand.Helper getCopyHelper() {
        return this.copyHelper;
    }

    protected boolean prepare() {
        return true;
    }

    @Override
    public void doExecute() {
        EClass metaObject = this.owner.eClass();
        EPackage ePackage = metaObject.getEPackage();
        EFactory eFactory = ePackage.getEFactoryInstance();
        this.copy = eFactory.create(metaObject);
        this.copyHelper.put(this.owner, this.copy);
    }

    @Override
    public void doUndo() {
        this.copyHelper.remove(this.owner);
    }

    @Override
    public void doRedo() {
        this.copyHelper.put(this.owner, this.copy);
    }

    @Override
    public Collection<?> doGetResult() {
        return Collections.singleton(this.copy);
    }

    @Override
    public Collection<?> doGetChildrenToCopy() {
        HashSet result = new HashSet(this.owner.eContents());
        return result;
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (owner: " + this.owner + ")");
        result.append(" (copyHelper: " + this.copyHelper + ")");
        return result.toString();
    }
}

