/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.command.IdentityCommand
 *  org.eclipse.emf.common.command.StrictCompoundCommand
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.edit.command;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.command.IdentityCommand;
import org.eclipse.emf.common.command.StrictCompoundCommand;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.ChildrenToCopyProvider;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CreateCopyCommand;
import org.eclipse.emf.edit.command.InitializeCopyCommand;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CopyCommand
extends StrictCompoundCommand {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_CopyCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_CopyCommand_description");
    protected EditingDomain domain;
    protected EObject owner;
    protected Helper copyHelper;
    protected boolean optimize;

    public static Command create(EditingDomain domain, Object owner) {
        return domain.createCommand(CopyCommand.class, new CommandParameter(owner, null, new Helper()));
    }

    public static Command create(EditingDomain domain, Collection<?> collection) {
        if (collection == null || collection.isEmpty()) {
            return UnexecutableCommand.INSTANCE;
        }
        Helper copyHelper = new Helper();
        CompoundCommand copyCommand = new CompoundCommand(Integer.MAX_VALUE);
        for (Object object : collection) {
            copyCommand.append(domain.createCommand(CopyCommand.class, new CommandParameter(object, null, copyHelper)));
        }
        return copyCommand.unwrap();
    }

    public CopyCommand(EditingDomain domain, EObject owner, Helper copyHelper) {
        this(domain, owner, copyHelper, true);
    }

    public CopyCommand(EditingDomain domain, EObject owner, Helper copyHelper, boolean optimize) {
        super(LABEL, DESCRIPTION);
        this.resultIndex = 0;
        this.domain = domain;
        this.owner = owner;
        this.copyHelper = copyHelper;
        this.optimize = optimize;
        copyHelper.incrementDeferredInitializationCount();
    }

    protected boolean prepare() {
        if (this.owner == null) {
            return false;
        }
        CompoundCommand createCommand = new CompoundCommand(0);
        this.addCreateCopyCommands(createCommand, this.owner);
        this.append(createCommand.unwrap());
        if (this.copyHelper.decrementDeferredInitializationCount() == 0) {
            CompoundCommand initializeCommand = new CompoundCommand(){

                public boolean prepare() {
                    Iterator<EObject> copiedObjects = CopyCommand.this.copyHelper.initializationIterator();
                    while (copiedObjects.hasNext()) {
                        EObject object = copiedObjects.next();
                        Command initializeCopyCommand = InitializeCopyCommand.create(CopyCommand.this.domain, object, CopyCommand.this.copyHelper);
                        if (!this.appendIfCanExecute(initializeCopyCommand)) {
                            return false;
                        }
                        copiedObjects.remove();
                    }
                    return true;
                }
            };
            this.append((Command)initializeCommand);
        } else if (!this.optimize) {
            this.append((Command)IdentityCommand.INSTANCE);
        }
        boolean result = super.prepare();
        return result;
    }

    public boolean canExecute() {
        boolean result = this.optimize ? true : super.canExecute();
        return result;
    }

    public void execute() {
        if (super.canExecute()) {
            super.execute();
        }
    }

    protected void addCreateCopyCommands(CompoundCommand compoundCommand, EObject object) {
        Command createCopyCommand = CreateCopyCommand.create(this.domain, object, this.copyHelper);
        compoundCommand.append(createCopyCommand);
        if (createCopyCommand instanceof ChildrenToCopyProvider && createCopyCommand.canExecute()) {
            for (Object child : ((ChildrenToCopyProvider)createCopyCommand).getChildrenToCopy()) {
                this.addCreateCopyCommands(compoundCommand, (EObject)child);
            }
        } else {
            for (EObject child : object.eContents()) {
                this.addCreateCopyCommands(compoundCommand, child);
            }
        }
    }

    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (domain: " + this.domain + ")");
        result.append(" (owner: " + this.owner + ")");
        return result.toString();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Helper
    extends HashMap<EObject, EObject> {
        private static final long serialVersionUID = 1L;
        protected ArrayList<EObject> initializationList = new ArrayList();
        protected int deferredInitializationCount;

        public EObject getCopy(EObject object) {
            return (EObject)this.get(object);
        }

        public EObject getCopyTarget(EObject target, boolean copyRequired) {
            EObject copied = this.getCopy(target);
            if (copied == null) {
                copied = copyRequired ? null : target;
            }
            return copied;
        }

        @Override
        public EObject put(EObject key, EObject value) {
            this.initializationList.add(key);
            return super.put(key, value);
        }

        @Override
        public EObject remove(Object key) {
            this.initializationList.remove(key);
            return (EObject)super.remove(key);
        }

        public Iterator<EObject> initializationIterator() {
            return this.initializationList.iterator();
        }

        public void incrementDeferredInitializationCount() {
            ++this.deferredInitializationCount;
        }

        public int decrementDeferredInitializationCount() {
            return --this.deferredInitializationCount;
        }
    }
}

