/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EStructuralFeature$Setting
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil$UsageCrossReferencer
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Map;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.RemoveCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DeleteCommand
extends CompoundCommand {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_DeleteCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_DeleteCommand_description");
    protected EditingDomain domain;
    protected Collection<?> collection;

    public static Command create(EditingDomain domain, Object object) {
        return DeleteCommand.create(domain, Collections.singleton(object));
    }

    public static Command create(EditingDomain domain, Collection<?> collection) {
        return domain.createCommand(DeleteCommand.class, new CommandParameter(null, null, collection));
    }

    public DeleteCommand(EditingDomain domain, Collection<?> collection) {
        super(0, LABEL, DESCRIPTION);
        this.domain = domain;
        this.collection = collection;
    }

    public Collection<?> getCollection() {
        return this.collection;
    }

    protected boolean prepare() {
        this.prepareCommand();
        return super.prepare();
    }

    protected void prepareCommand() {
        this.append(RemoveCommand.create(this.domain, this.collection));
    }

    public void execute() {
        LinkedHashSet<EObject> eObjects = new LinkedHashSet<EObject>();
        for (Object wrappedObject : this.collection) {
            TreeIterator j;
            Object object = AdapterFactoryEditingDomain.unwrap(wrappedObject);
            if (object instanceof EObject) {
                eObjects.add((EObject)object);
                j = ((EObject)object).eAllContents();
                while (j.hasNext()) {
                    eObjects.add((EObject)j.next());
                }
                continue;
            }
            if (!(object instanceof Resource)) continue;
            j = ((Resource)object).getAllContents();
            while (j.hasNext()) {
                eObjects.add((EObject)j.next());
            }
        }
        Map<EObject, Collection<EStructuralFeature.Setting>> usages = this.findReferences(eObjects);
        super.execute();
        for (Map.Entry<EObject, Collection<EStructuralFeature.Setting>> entry : usages.entrySet()) {
            EObject eObject = entry.getKey();
            if (eObject.eResource() != null) continue;
            Collection<EStructuralFeature.Setting> settings = entry.getValue();
            for (EStructuralFeature.Setting setting : settings) {
                EStructuralFeature eStructuralFeature;
                EObject referencingEObject = setting.getEObject();
                if (eObjects.contains(referencingEObject) || !(eStructuralFeature = setting.getEStructuralFeature()).isChangeable()) continue;
                if (eStructuralFeature.isMany()) {
                    this.appendAndExecute(RemoveCommand.create(this.domain, (Object)referencingEObject, (Object)eStructuralFeature, eObject));
                    continue;
                }
                this.appendAndExecute(SetCommand.create(this.domain, referencingEObject, eStructuralFeature, SetCommand.UNSET_VALUE));
            }
        }
    }

    protected Map<EObject, Collection<EStructuralFeature.Setting>> findReferences(Collection<EObject> eObjects) {
        return EcoreUtil.UsageCrossReferencer.findAll(eObjects, (ResourceSet)this.domain.getResourceSet());
    }
}

