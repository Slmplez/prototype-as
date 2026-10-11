/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.AbstractCommand
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.command.IdentityCommand
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.edit.command;

import java.util.ArrayList;
import java.util.Collection;
import java.util.ListIterator;
import org.eclipse.emf.common.command.AbstractCommand;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.command.IdentityCommand;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AddCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CopyCommand;
import org.eclipse.emf.edit.command.DragAndDropFeedback;
import org.eclipse.emf.edit.command.MoveCommand;
import org.eclipse.emf.edit.command.RemoveCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DragAndDropCommand
extends AbstractCommand
implements DragAndDropFeedback {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_DragAndDropCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_DragAndDropCommand_description");
    protected EditingDomain domain;
    protected Object owner;
    protected float location;
    protected float lowerLocationBound;
    protected float upperLocationBound;
    protected int operations;
    protected int operation;
    protected int feedback;
    protected Collection<?> collection;
    protected Command dragCommand;
    protected boolean isDragCommandExecuted;
    protected Command dropCommand;
    protected boolean optimize;
    protected Object optimizedDropCommandOwner;

    public static Command create(EditingDomain domain, Object owner, float location, int operations, int operation, Collection<?> collection) {
        return domain.createCommand(DragAndDropCommand.class, new CommandParameter(owner, (Object)new Detail(location, operations, operation), collection));
    }

    public DragAndDropCommand(EditingDomain domain, Object owner, float location, int operations, int operation, Collection<?> collection) {
        this(domain, owner, location, operations, operation, collection, domain == null ? false : domain.getOptimizeCopy());
    }

    public DragAndDropCommand(EditingDomain domain, Object owner, float location, int operations, int operation, Collection<?> collection, boolean optimize) {
        super(LABEL, DESCRIPTION);
        this.domain = domain;
        this.owner = owner;
        this.location = location;
        this.operations = operations;
        this.operation = operation;
        this.collection = collection;
        this.optimize = optimize;
        this.optimize = false;
    }

    protected boolean analyzeForNonContainment(Command command) {
        if (command instanceof AddCommand) {
            return this.isNonContainment(((AddCommand)command).getFeature());
        }
        if (command instanceof SetCommand) {
            return this.isNonContainment(((SetCommand)command).getFeature());
        }
        if (command instanceof CommandWrapper) {
            return this.analyzeForNonContainment(((CommandWrapper)command).getCommand());
        }
        if (command instanceof CompoundCommand) {
            for (Command childCommand : ((CompoundCommand)command).getCommandList()) {
                if (!this.analyzeForNonContainment(childCommand)) continue;
                return true;
            }
        }
        return false;
    }

    protected boolean isNonContainment(EStructuralFeature feature) {
        return feature instanceof EReference && !((EReference)feature).isContainment();
    }

    public Object getOwner() {
        return this.owner;
    }

    public float getLocation() {
        return this.location;
    }

    public int getOperations() {
        return this.operations;
    }

    public Collection<?> getCollection() {
        return this.collection;
    }

    protected boolean prepare() {
        boolean result = false;
        if (this.owner != null && this.collection != null && this.operations != 0 && this.operation != 0) {
            if ((double)this.location <= 0.2 || (double)this.location >= 0.8) {
                result = this.prepareDropInsert();
                if (result) {
                    if ((double)this.location <= 0.2) {
                        this.lowerLocationBound = 0.0f;
                        this.upperLocationBound = 0.2f;
                    } else {
                        this.lowerLocationBound = 0.8f;
                        this.upperLocationBound = 1.0f;
                    }
                } else {
                    this.reset();
                    result = this.prepareDropOn();
                    if ((double)this.location <= 0.2) {
                        this.lowerLocationBound = 0.0f;
                        this.upperLocationBound = 0.8f;
                    } else {
                        this.lowerLocationBound = 0.2f;
                        this.upperLocationBound = 1.0f;
                    }
                }
            } else {
                result = this.prepareDropOn();
                if (result) {
                    this.lowerLocationBound = 0.2f;
                    this.upperLocationBound = 0.8f;
                } else {
                    this.reset();
                    result = this.prepareDropInsert();
                    if ((double)this.location <= 0.5) {
                        this.lowerLocationBound = 0.0f;
                        this.upperLocationBound = 0.5f;
                    } else {
                        this.lowerLocationBound = 0.5f;
                        this.upperLocationBound = 1.0f;
                    }
                }
            }
        } else {
            this.lowerLocationBound = 0.0f;
            this.upperLocationBound = 1.0f;
        }
        return result;
    }

    protected Object getParent(Object object) {
        return this.domain.getParent(object);
    }

    protected Collection<?> getChildren(Object object) {
        return this.domain.getChildren(object);
    }

    protected boolean prepareDropInsert() {
        boolean result = false;
        this.feedback = (double)this.location < 0.5 ? 2 : 4;
        Object parent = this.getParent(this.owner);
        if (parent == null) {
            this.dragCommand = UnexecutableCommand.INSTANCE;
            this.dropCommand = UnexecutableCommand.INSTANCE;
        } else {
            Collection<?> children = this.getChildren(parent);
            int i = 0;
            for (Object child : children) {
                if (child == this.owner) break;
                ++i;
            }
            if ((double)this.location >= 0.5) {
                ++i;
            }
            switch (this.operation) {
                case 2: {
                    result = this.prepareDropMoveInsert(parent, children, i);
                    break;
                }
                case 1: {
                    result = this.prepareDropCopyInsert(parent, children, i);
                    break;
                }
                case 4: {
                    result = this.prepareDropLinkInsert(parent, children, i);
                }
            }
            if (!result && this.operation != 1 && this.operation != 4 && (this.operations & 1) != 0) {
                this.reset();
                result = this.prepareDropCopyInsert(parent, children, i);
                if (result) {
                    this.operation = 1;
                }
            }
            if (!result && this.operation != 4 && (this.operations & 4) != 0) {
                this.reset();
                result = this.prepareDropLinkInsert(parent, children, i);
                if (result) {
                    this.operation = 4;
                }
            }
        }
        return result;
    }

    protected boolean prepareDropMoveInsert(Object parent, Collection<?> children, int index) {
        if (this.collection.contains(this.owner)) {
            this.dragCommand = IdentityCommand.INSTANCE;
            this.dropCommand = UnexecutableCommand.INSTANCE;
        } else if (children.containsAll(this.collection)) {
            this.dragCommand = IdentityCommand.INSTANCE;
            CompoundCommand compoundCommand = new CompoundCommand();
            ArrayList before = new ArrayList();
            ArrayList after = new ArrayList();
            int j = 0;
            for (Object object : children) {
                if (this.collection.contains(object)) {
                    if (j < index) {
                        before.add(object);
                    } else if (j > index) {
                        after.add(object);
                    }
                }
                ++j;
            }
            for (Object object : before) {
                compoundCommand.append(MoveCommand.create(this.domain, parent, null, object, index - 1));
            }
            ListIterator objects = after.listIterator(after.size());
            while (objects.hasPrevious()) {
                Object object = objects.previous();
                compoundCommand.append(MoveCommand.create(this.domain, parent, null, object, index));
            }
            this.dropCommand = compoundCommand.getCommandList().size() == 0 ? IdentityCommand.INSTANCE : compoundCommand;
        } else if (this.isCrossDomain()) {
            this.dragCommand = IdentityCommand.INSTANCE;
            this.dropCommand = UnexecutableCommand.INSTANCE;
        } else {
            this.dropCommand = AddCommand.create(this.domain, parent, null, this.collection, index);
            if (this.analyzeForNonContainment(this.dropCommand)) {
                this.dropCommand.dispose();
                this.dropCommand = UnexecutableCommand.INSTANCE;
                this.dragCommand = IdentityCommand.INSTANCE;
            } else {
                this.dragCommand = RemoveCommand.create(this.domain, this.collection);
            }
        }
        boolean result = this.dragCommand.canExecute() && this.dropCommand.canExecute();
        return result;
    }

    protected boolean isCrossDomain() {
        for (Object item : this.collection) {
            EditingDomain itemDomain = AdapterFactoryEditingDomain.getEditingDomainFor(item);
            if (itemDomain == null || itemDomain == this.domain) continue;
            return true;
        }
        return false;
    }

    protected boolean prepareDropCopyInsert(Object parent, Collection<?> children, int index) {
        boolean result;
        if (this.collection.contains(this.owner)) {
            this.dragCommand = IdentityCommand.INSTANCE;
            this.dropCommand = UnexecutableCommand.INSTANCE;
            result = false;
        } else {
            this.dragCommand = CopyCommand.create(this.domain, this.collection);
            if (this.optimize) {
                result = this.optimizedCanExecute();
                if (result) {
                    this.optimizedDropCommandOwner = parent;
                }
            } else if (this.dragCommand.canExecute() && this.dragCommand.canUndo()) {
                this.dragCommand.execute();
                this.isDragCommandExecuted = true;
                this.dropCommand = AddCommand.create(this.domain, parent, null, this.dragCommand.getResult(), index);
                if (this.analyzeForNonContainment(this.dropCommand)) {
                    this.dropCommand.dispose();
                    this.dropCommand = UnexecutableCommand.INSTANCE;
                    this.dragCommand.undo();
                    this.dragCommand.dispose();
                    this.isDragCommandExecuted = false;
                    this.dragCommand = IdentityCommand.INSTANCE;
                }
                result = this.dropCommand.canExecute();
            } else {
                this.dropCommand = UnexecutableCommand.INSTANCE;
                result = false;
            }
        }
        return result;
    }

    protected boolean prepareDropLinkInsert(Object parent, Collection<?> children, int index) {
        boolean result;
        if (this.collection.contains(this.owner)) {
            this.dragCommand = IdentityCommand.INSTANCE;
            this.dropCommand = UnexecutableCommand.INSTANCE;
            result = false;
        } else {
            this.dragCommand = IdentityCommand.INSTANCE;
            this.dropCommand = AddCommand.create(this.domain, parent, null, this.collection, index);
            if (!this.analyzeForNonContainment(this.dropCommand)) {
                this.dropCommand.dispose();
                this.dropCommand = UnexecutableCommand.INSTANCE;
            }
            result = this.dropCommand.canExecute();
        }
        return result;
    }

    protected boolean prepareDropOn() {
        boolean result = false;
        this.feedback = 1;
        switch (this.operation) {
            case 2: {
                result = this.prepareDropMoveOn();
                break;
            }
            case 1: {
                result = this.prepareDropCopyOn();
                break;
            }
            case 4: {
                result = this.prepareDropLinkOn();
            }
        }
        if (!result && this.operation != 1 && this.operation != 4 && (this.operations & 1) != 0) {
            this.reset();
            result = this.prepareDropCopyOn();
            if (result) {
                this.operation = 1;
            }
        }
        if (!result && this.operation != 4 && (this.operations & 4) != 0) {
            this.reset();
            result = this.prepareDropLinkOn();
            if (result) {
                this.operation = 4;
            }
        }
        return result;
    }

    protected boolean prepareDropMoveOn() {
        if (this.isCrossDomain()) {
            this.dragCommand = IdentityCommand.INSTANCE;
            this.dropCommand = UnexecutableCommand.INSTANCE;
        } else {
            this.dropCommand = AddCommand.create(this.domain, this.owner, null, this.collection);
            if (this.analyzeForNonContainment(this.dropCommand)) {
                this.dropCommand.dispose();
                this.dropCommand = UnexecutableCommand.INSTANCE;
                this.dragCommand = IdentityCommand.INSTANCE;
            } else {
                this.dragCommand = RemoveCommand.create(this.domain, this.collection);
            }
        }
        boolean result = this.dragCommand.canExecute() && this.dropCommand.canExecute();
        return result;
    }

    protected boolean prepareDropCopyOn() {
        boolean result;
        this.dragCommand = CopyCommand.create(this.domain, this.collection);
        if (this.optimize) {
            result = this.optimizedCanExecute();
            if (result) {
                this.optimizedDropCommandOwner = this.owner;
            }
        } else {
            if (this.dragCommand.canExecute() && this.dragCommand.canUndo()) {
                this.dragCommand.execute();
                this.isDragCommandExecuted = true;
                this.dropCommand = AddCommand.create(this.domain, this.owner, null, this.dragCommand.getResult());
                if (this.analyzeForNonContainment(this.dropCommand)) {
                    this.dropCommand.dispose();
                    this.dropCommand = UnexecutableCommand.INSTANCE;
                    this.dragCommand.undo();
                    this.dragCommand.dispose();
                    this.isDragCommandExecuted = false;
                    this.dragCommand = IdentityCommand.INSTANCE;
                }
            } else {
                this.dropCommand = UnexecutableCommand.INSTANCE;
            }
            result = this.dragCommand.canExecute() && this.dropCommand.canExecute();
        }
        return result;
    }

    protected boolean prepareDropLinkOn() {
        this.dragCommand = IdentityCommand.INSTANCE;
        this.dropCommand = SetCommand.create(this.domain, this.owner, null, this.collection);
        if (!this.dropCommand.canExecute() && this.collection.size() == 1) {
            this.dropCommand.dispose();
            this.dropCommand = SetCommand.create(this.domain, this.owner, null, this.collection.iterator().next());
        }
        if (!this.dropCommand.canExecute() || !this.analyzeForNonContainment(this.dropCommand)) {
            this.dropCommand.dispose();
            this.dropCommand = AddCommand.create(this.domain, this.owner, null, this.collection);
            if (!this.analyzeForNonContainment(this.dropCommand)) {
                this.dropCommand.dispose();
                this.dropCommand = UnexecutableCommand.INSTANCE;
            }
        }
        boolean result = this.dropCommand.canExecute();
        return result;
    }

    protected boolean optimizedCanExecute() {
        Command addCommand = AddCommand.create(this.domain, this.owner, null, this.collection);
        boolean result = addCommand.canExecute() && !this.analyzeForNonContainment(addCommand);
        addCommand.dispose();
        return result;
    }

    protected void reset() {
        if (this.dragCommand != null) {
            if (this.isDragCommandExecuted && this.dragCommand.canUndo()) {
                this.dragCommand.undo();
            }
            this.dragCommand.dispose();
        }
        if (this.dropCommand != null) {
            this.dropCommand.dispose();
        }
        this.isPrepared = false;
        this.isExecutable = false;
        this.dragCommand = null;
        this.isDragCommandExecuted = false;
        this.dropCommand = null;
        this.optimizedDropCommandOwner = null;
    }

    @Override
    public boolean validate(Object owner, float location, int operations, int operation, Collection<?> collection) {
        if (owner != this.owner || location != this.location || location < this.lowerLocationBound || location > this.upperLocationBound || operation != this.operation || collection != this.collection) {
            this.reset();
            this.owner = owner;
            this.location = location;
            this.operations = operations;
            this.operation = operation;
            this.collection = collection;
            return this.canExecute();
        }
        return this.isExecutable;
    }

    @Override
    public int getFeedback() {
        return this.isExecutable ? this.feedback : 1;
    }

    @Override
    public int getOperation() {
        return this.isExecutable ? this.operation : 0;
    }

    public void execute() {
        if (this.dragCommand != null && !this.isDragCommandExecuted) {
            if (this.optimizedDropCommandOwner != null) {
                if (this.dragCommand.canExecute()) {
                    this.dragCommand.execute();
                    this.dropCommand = AddCommand.create(this.domain, this.optimizedDropCommandOwner, null, this.dragCommand.getResult());
                }
            } else {
                this.dragCommand.execute();
            }
        }
        if (this.dropCommand != null && this.dropCommand.canExecute()) {
            this.dropCommand.execute();
        }
    }

    public void undo() {
        if (this.dropCommand != null) {
            this.dropCommand.undo();
        }
        if (this.dragCommand != null) {
            this.dragCommand.undo();
        }
    }

    public void redo() {
        if (this.dragCommand != null) {
            this.dragCommand.redo();
        }
        if (this.dropCommand != null) {
            this.dropCommand.redo();
        }
    }

    public void dispose() {
        if (this.dragCommand != null) {
            this.dragCommand.dispose();
        }
        if (this.dropCommand != null) {
            this.dropCommand.dispose();
        }
    }

    public Collection<?> getResult() {
        return this.dropCommand != null ? this.dropCommand.getResult() : super.getResult();
    }

    public Collection<?> getAffectedObjects() {
        return this.dropCommand != null ? this.dropCommand.getAffectedObjects() : super.getAffectedObjects();
    }

    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (domain: " + this.domain + ")");
        result.append(" (owner: " + this.owner + ")");
        result.append(" (location: " + this.location + ")");
        result.append(" (lowerLocationBound: " + this.lowerLocationBound + ")");
        result.append(" (upperLocationBound: " + this.upperLocationBound + ")");
        result.append(" (operations: " + this.operations + ")");
        result.append(" (operation: " + this.operation + ")");
        result.append(" (collection: " + this.collection + ")");
        result.append(" (feedback: " + this.feedback + ")");
        return result.toString();
    }

    public static class Detail {
        public float location;
        public int operations;
        public int operation;

        public Detail(float location, int operations, int operation) {
            this.location = location;
            this.operations = operations;
            this.operation = operation;
        }
    }
}

