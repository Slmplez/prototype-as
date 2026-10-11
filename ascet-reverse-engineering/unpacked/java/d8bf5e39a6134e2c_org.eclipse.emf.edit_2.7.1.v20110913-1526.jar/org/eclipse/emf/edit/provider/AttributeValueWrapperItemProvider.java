/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package org.eclipse.emf.edit.provider;

import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.edit.command.CopyCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.emf.edit.provider.WrapperItemProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AttributeValueWrapperItemProvider
extends WrapperItemProvider
implements IStructuredItemContentProvider,
ITreeItemContentProvider,
IItemLabelProvider,
IItemPropertySource,
IEditingDomainItemProvider {
    protected ResourceLocator resourceLocator;
    protected List<IItemPropertyDescriptor> propertyDescriptors;

    public AttributeValueWrapperItemProvider(Object value, EObject owner, EAttribute attribute, AdapterFactory adapterFactory, ResourceLocator resourceLocator) {
        super(value, owner, (EStructuralFeature)attribute, -1, adapterFactory);
        this.resourceLocator = resourceLocator;
    }

    public AttributeValueWrapperItemProvider(Object value, EObject owner, EAttribute attribute, int index, AdapterFactory adapterFactory, ResourceLocator resourceLocator) {
        super(value, owner, (EStructuralFeature)attribute, index, adapterFactory);
        this.resourceLocator = resourceLocator;
    }

    @Deprecated
    public AttributeValueWrapperItemProvider(Object value, EObject owner, EAttribute attribute, AdapterFactory adapterFactory) {
        this(value, owner, attribute, adapterFactory, null);
    }

    @Deprecated
    public AttributeValueWrapperItemProvider(Object value, EObject owner, EAttribute attribute, int index, AdapterFactory adapterFactory) {
        this(value, owner, attribute, index, adapterFactory, null);
    }

    @Override
    public String getText(Object object) {
        return this.value != null ? EcoreUtil.convertToString((EDataType)((EAttribute)this.feature).getEAttributeType(), (Object)this.value) : "null";
    }

    @Override
    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        if (this.propertyDescriptors == null) {
            this.propertyDescriptors = Collections.singletonList(new WrapperItemProvider.WrapperItemPropertyDescriptor(this, this.resourceLocator, this.feature));
        }
        return this.propertyDescriptors;
    }

    @Override
    protected Command createSetCommand(EditingDomain domain, Object owner, Object feature, Object value, int index) {
        return new WrapperItemProvider.ReplacementAffectedObjectCommand(this, SetCommand.create(domain, this.owner, this.feature, value, this.index));
    }

    @Override
    protected Command createCopyCommand(EditingDomain domain, Object owner, CopyCommand.Helper helper) {
        return new WrapperItemProvider.SimpleCopyCommand(this, domain){

            public IWrapperItemProvider copy() {
                Object valueCopy = null;
                if (AttributeValueWrapperItemProvider.this.value != null) {
                    EDataType dataType = ((EAttribute)AttributeValueWrapperItemProvider.this.feature).getEAttributeType();
                    String serialization = EcoreUtil.convertToString((EDataType)dataType, (Object)AttributeValueWrapperItemProvider.this.value);
                    valueCopy = EcoreUtil.createFromString((EDataType)dataType, (String)serialization);
                    if (serialization == AttributeValueWrapperItemProvider.this.value && serialization == valueCopy) {
                        valueCopy = new String((String)AttributeValueWrapperItemProvider.this.value);
                    }
                }
                return new AttributeValueWrapperItemProvider(valueCopy, (EObject)AttributeValueWrapperItemProvider.this.owner, (EAttribute)AttributeValueWrapperItemProvider.this.feature, AttributeValueWrapperItemProvider.this.index, AttributeValueWrapperItemProvider.this.adapterFactory);
            }
        };
    }
}

