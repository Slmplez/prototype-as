/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 */
package org.eclipse.emf.edit.command;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AddCommand;
import org.eclipse.emf.edit.command.CommandActionDelegate;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CreateChildCommand
extends CommandWrapper
implements CommandActionDelegate {
    @Deprecated
    protected static final int NO_INDEX = -1;
    protected EditingDomain domain;
    protected EObject owner;
    protected EStructuralFeature feature;
    protected Object child;
    protected int index;
    protected Helper helper;
    protected Collection<?> affectedObjects;
    protected Collection<?> selection;
    private static final Helper defaultHelper = new Helper(){

        @Override
        public Collection<?> getCreateChildResult(Object child) {
            return Collections.singletonList(child);
        }

        @Override
        public String getCreateChildText(Object owner, Object feature, Object child, Collection<?> selection) {
            return EMFEditPlugin.INSTANCE.getString("_UI_CreateChild_text", new Object[]{EMFEditPlugin.INSTANCE.getString("_UI_Unknown_type"), EMFEditPlugin.INSTANCE.getString("_UI_Unknown_feature"), EMFEditPlugin.INSTANCE.getString("_UI_Unknown_type")});
        }

        @Override
        public String getCreateChildDescription(Object owner, Object feature, Object child, Collection<?> selection) {
            return EMFEditPlugin.INSTANCE.getString("_UI_CreateChildCommand_description");
        }

        @Override
        public String getCreateChildToolTipText(Object owner, Object feature, Object child, Collection<?> selection) {
            return EMFEditPlugin.INSTANCE.getString("_UI_CreateChild_tooltip", new Object[]{EMFEditPlugin.INSTANCE.getString("_UI_Unknown_type"), EMFEditPlugin.INSTANCE.getString("_UI_Unknown_feature"), EMFEditPlugin.INSTANCE.getString("_UI_Unknown_type")});
        }

        @Override
        public Object getCreateChildImage(Object owner, Object feature, Object child, Collection<?> selection) {
            return null;
        }
    };

    public static Command create(EditingDomain domain, Object owner, Object newChildDescriptor, Collection<?> selection) {
        return domain.createCommand(CreateChildCommand.class, new CommandParameter(owner, null, newChildDescriptor, new ArrayList(selection)));
    }

    public CreateChildCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object child, Collection<?> selection) {
        this(domain, owner, feature, child, -1, selection, null);
    }

    public CreateChildCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object child, Collection<?> selection, Helper helper) {
        this(domain, owner, feature, child, -1, selection, helper);
    }

    public CreateChildCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object child, int index, Collection<?> selection) {
        this(domain, owner, feature, child, index, selection, null);
    }

    public CreateChildCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object child, int index, Collection<?> selection, Helper helper) {
        Object selObject;
        this.domain = domain;
        this.owner = owner;
        this.feature = feature;
        this.child = child;
        this.index = index;
        this.selection = selection == null ? Collections.EMPTY_LIST : selection;
        Helper helper2 = this.helper = helper == null ? defaultHelper : helper;
        if (this.selection.size() == 1 && (selObject = this.selection.iterator().next()) instanceof FeatureMap.Entry && ((FeatureMap.Entry)selObject).getValue() == owner) {
            this.selection = Collections.singletonList(owner);
        }
        String text = this.helper.getCreateChildText(owner, feature, child, selection);
        this.setLabel(EMFEditPlugin.INSTANCE.getString("_UI_CreateChildCommand_label", new Object[]{text}));
        this.setDescription(EMFEditPlugin.INSTANCE.getString("_UI_CreateChildCommand_description"));
    }

    protected Command createCommand() {
        if (this.owner == null || this.feature == null || this.child == null) {
            return UnexecutableCommand.INSTANCE;
        }
        if (this.feature.isMany()) {
            return AddCommand.create(this.domain, (Object)this.owner, (Object)this.feature, this.child, this.index);
        }
        if (this.owner.eGet(this.feature) == null) {
            return SetCommand.create(this.domain, this.owner, this.feature, this.child);
        }
        return UnexecutableCommand.INSTANCE;
    }

    public void execute() {
        super.execute();
        this.affectedObjects = this.helper.getCreateChildResult(this.child);
    }

    public void undo() {
        super.undo();
        this.affectedObjects = this.selection;
    }

    public void redo() {
        super.redo();
        this.affectedObjects = this.helper.getCreateChildResult(this.child);
    }

    public Collection<?> getAffectedObjects() {
        return this.affectedObjects == null ? Collections.EMPTY_LIST : this.affectedObjects;
    }

    public Collection<?> getResult() {
        Collection<?> result = this.helper.getCreateChildResult(this.child);
        return result == null ? Collections.EMPTY_LIST : result;
    }

    @Override
    public String getText() {
        return this.helper.getCreateChildText(this.owner, this.feature, this.child, this.selection);
    }

    @Override
    public String getDescription() {
        return this.helper.getCreateChildDescription(this.owner, this.feature, this.child, this.selection);
    }

    @Override
    public String getToolTipText() {
        return this.helper.getCreateChildToolTipText(this.owner, this.feature, this.child, this.selection);
    }

    @Override
    public Object getImage() {
        return this.helper.getCreateChildImage(this.owner, this.feature, this.child, this.selection);
    }

    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (domain: " + this.domain + ")");
        result.append(" (owner: " + this.owner + ")");
        result.append(" (feature: " + this.feature + ")");
        result.append(" (child: " + this.child + ")");
        result.append(" (index: " + this.index + ")");
        result.append(" (helper: " + this.helper + ")");
        result.append(" (affectedObjects: " + this.affectedObjects + ")");
        result.append(" (selection: " + this.selection + ")");
        return result.toString();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Helper {
        public Collection<?> getCreateChildResult(Object var1);

        public String getCreateChildText(Object var1, Object var2, Object var3, Collection<?> var4);

        public String getCreateChildDescription(Object var1, Object var2, Object var3, Collection<?> var4);

        public String getCreateChildToolTipText(Object var1, Object var2, Object var3, Collection<?> var4);

        public Object getCreateChildImage(Object var1, Object var2, Object var3, Collection<?> var4);
    }
}

