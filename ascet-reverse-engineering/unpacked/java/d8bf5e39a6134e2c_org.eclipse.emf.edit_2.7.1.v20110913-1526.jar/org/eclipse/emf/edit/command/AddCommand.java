/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 *  org.eclipse.emf.ecore.util.FeatureMapUtil$Validator
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 */
package org.eclipse.emf.edit.command;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AbstractOverrideableCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AddCommand
extends AbstractOverrideableCommand {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_AddCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_AddCommand_description");
    protected static final String DESCRIPTION_FOR_LIST = EMFEditPlugin.INSTANCE.getString("_UI_AddCommand_description_for_list");
    protected EObject owner;
    protected EStructuralFeature feature;
    protected EList<Object> ownerList;
    protected Collection<?> collection;
    protected int index;
    protected Collection<?> affectedObjects;

    public static Command create(EditingDomain domain, Object owner, Object feature, Object value) {
        return AddCommand.create(domain, owner, feature, Collections.singleton(value), -1);
    }

    public static Command create(EditingDomain domain, Object owner, Object feature, Object value, int index) {
        return AddCommand.create(domain, owner, feature, Collections.singleton(value), index);
    }

    public static Command create(EditingDomain domain, Object owner, Object feature, Collection<?> collection) {
        return domain.createCommand(AddCommand.class, new CommandParameter(owner, feature, collection, -1));
    }

    public static Command create(EditingDomain domain, Object owner, Object feature, Collection<?> collection, int index) {
        return domain.createCommand(AddCommand.class, new CommandParameter(owner, feature, collection, index));
    }

    public AddCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value) {
        this(domain, owner, feature, Collections.singleton(value), -1);
    }

    public AddCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, int index) {
        this(domain, owner, feature, Collections.singleton(value), index);
    }

    public AddCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Collection<?> collection) {
        this(domain, owner, feature, collection, -1);
    }

    public AddCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Collection<?> collection, int index) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.feature = feature;
        this.collection = collection;
        this.index = index;
        this.ownerList = AddCommand.getOwnerList(owner, feature);
    }

    public AddCommand(EditingDomain domain, EList<?> list, Object value) {
        this(domain, list, Collections.singleton(value), -1);
    }

    public AddCommand(EditingDomain domain, EList<?> list, Object value, int index) {
        this(domain, list, Collections.singleton(value), index);
    }

    public AddCommand(EditingDomain domain, EList<?> list, Collection<?> collection) {
        this(domain, list, collection, -1);
    }

    public AddCommand(EditingDomain domain, EList<?> list, Collection<?> collection, int index) {
        super(domain, LABEL, DESCRIPTION_FOR_LIST);
        this.collection = collection;
        this.index = index;
        EList<?> untypedList = list;
        this.ownerList = untypedList;
    }

    public EObject getOwner() {
        return this.owner;
    }

    public EStructuralFeature getFeature() {
        return this.feature;
    }

    public EList<?> getOwnerList() {
        return this.ownerList;
    }

    public Collection<?> getCollection() {
        return this.collection;
    }

    public int getIndex() {
        return this.index;
    }

    protected boolean isUserElement(EStructuralFeature entryFeature) {
        return entryFeature != XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT && entryFeature != XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA && entryFeature != XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT && entryFeature != XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION;
    }

    protected boolean prepare() {
        if (this.ownerList == null || this.collection == null || this.collection.size() == 0 || this.index != -1 && (this.index < 0 || this.index > this.ownerList.size())) {
            return false;
        }
        if (this.feature != null) {
            EStructuralFeature entryFeature;
            FeatureMapUtil.Validator validator = null;
            boolean documentRoot = false;
            Set entryFeatures = Collections.emptySet();
            if (FeatureMapUtil.isFeatureMap((EStructuralFeature)this.feature)) {
                EClass eClass = this.owner.eClass();
                validator = FeatureMapUtil.getValidator((EClass)eClass, (EStructuralFeature)this.feature);
                documentRoot = ExtendedMetaData.INSTANCE.getDocumentRoot(eClass.getEPackage()) == eClass;
                boolean mixed = documentRoot || ExtendedMetaData.INSTANCE.getContentKind(eClass) == 3;
                entryFeatures = new HashSet();
                for (Object entry : this.ownerList) {
                    entryFeature = ((FeatureMap.Entry)entry).getEStructuralFeature();
                    if (mixed && !this.isUserElement(entryFeature)) continue;
                    entryFeatures.add(entryFeature);
                }
            }
            for (Object object : this.collection) {
                boolean containment = false;
                if (!this.feature.getEType().isInstance(object)) {
                    return false;
                }
                if (this.feature.isUnique() && this.ownerList.contains(object)) {
                    return false;
                }
                if (validator != null) {
                    FeatureMap.Entry entry = (FeatureMap.Entry)object;
                    entryFeature = entry.getEStructuralFeature();
                    boolean bl = containment = entryFeature instanceof EReference && ((EReference)entryFeature).isContainment();
                    if (!validator.isValid(entryFeature) || !entryFeature.getEType().isInstance(entry.getValue())) {
                        return false;
                    }
                    if (documentRoot) {
                        if (this.isUserElement(entryFeature)) {
                            if (!entryFeatures.isEmpty()) {
                                return false;
                            }
                            entryFeatures.add(entryFeature);
                        }
                    } else if (!entryFeatures.add(entryFeature) && !FeatureMapUtil.isMany((EObject)this.owner, (EStructuralFeature)entryFeature)) {
                        return false;
                    }
                }
                if (!(containment |= this.feature instanceof EReference && ((EReference)this.feature).isContainment())) continue;
                EObject container = this.owner;
                while (container != null) {
                    if (object == container) {
                        return false;
                    }
                    container = container.eContainer();
                }
            }
        }
        return this.owner == null || !this.domain.isReadOnly(this.owner.eResource());
    }

    @Override
    public void doExecute() {
        if (this.index == -1) {
            this.ownerList.addAll(this.collection);
        } else {
            this.ownerList.addAll(this.index, this.collection);
        }
        this.updateEMap(this.owner, this.feature);
        this.affectedObjects = this.collection;
    }

    @Override
    public void doUndo() {
        int i = this.index != -1 ? this.index : this.ownerList.size() - this.collection.size();
        this.ownerList.subList(i, i + this.collection.size()).clear();
        this.updateEMap(this.owner, this.feature);
        this.affectedObjects = this.owner == null ? Collections.EMPTY_SET : Collections.singleton(this.owner);
    }

    @Override
    public void doRedo() {
        if (this.index == -1) {
            this.ownerList.addAll(this.collection);
        } else {
            this.ownerList.addAll(this.index, this.collection);
        }
        this.updateEMap(this.owner, this.feature);
        this.affectedObjects = this.collection;
    }

    @Override
    public Collection<?> doGetResult() {
        return this.collection;
    }

    @Override
    public Collection<?> doGetAffectedObjects() {
        return this.affectedObjects;
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (owner: " + this.owner + ")");
        result.append(" (feature: " + this.feature + ")");
        result.append(" (ownerList: " + this.ownerList + ")");
        result.append(" (collection: " + this.collection + ")");
        result.append(" (index: " + this.index + ")");
        result.append(" (affectedObjects:" + this.affectedObjects + ")");
        return result.toString();
    }
}

