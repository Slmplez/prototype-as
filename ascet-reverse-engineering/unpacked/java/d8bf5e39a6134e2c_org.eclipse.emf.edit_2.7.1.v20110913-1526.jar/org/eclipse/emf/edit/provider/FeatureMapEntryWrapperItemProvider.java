/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 *  org.eclipse.emf.ecore.xml.type.ProcessingInstruction
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 */
package org.eclipse.emf.edit.provider;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CopyCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.DelegatingWrapperItemProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.emf.edit.provider.WrapperItemProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FeatureMapEntryWrapperItemProvider
extends DelegatingWrapperItemProvider {
    protected ResourceLocator resourceLocator;

    public FeatureMapEntryWrapperItemProvider(FeatureMap.Entry entry, EObject owner, EAttribute attribute, int index, AdapterFactory adapterFactory, ResourceLocator resourceLocator) {
        super(entry, owner, (EStructuralFeature)attribute, index, adapterFactory);
    }

    @Deprecated
    public FeatureMapEntryWrapperItemProvider(FeatureMap.Entry entry, EObject owner, EAttribute attribute, int index, AdapterFactory adapterFactory) {
        this(entry, owner, attribute, index, adapterFactory, null);
    }

    protected Object getEntryValue() {
        return ((FeatureMap.Entry)this.value).getValue();
    }

    protected EStructuralFeature getEntryFeature() {
        return ((FeatureMap.Entry)this.value).getEStructuralFeature();
    }

    protected boolean isEntryAttribute() {
        return this.getEntryFeature() instanceof EAttribute;
    }

    @Override
    protected Object getDelegateValue() {
        return this.isEntryAttribute() ? null : this.getEntryValue();
    }

    @Override
    public String getText(Object object) {
        String text = null;
        if (this.getEntryFeature() == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT) {
            text = this.encode(this.getEntryValue().toString());
        } else if (this.getEntryFeature() == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA) {
            text = "<![CDATA[" + this.encode(this.getEntryValue().toString()) + "]]>";
        } else if (this.getEntryFeature() == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT) {
            text = "<!--" + this.encode(this.getEntryValue().toString()) + "-->";
        } else if (this.getEntryFeature() == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION) {
            ProcessingInstruction pi = (ProcessingInstruction)this.getEntryValue();
            text = "<?" + (pi.getTarget() == null ? "" : this.encode(pi.getTarget())) + (pi.getData() != null && pi.getData().length() > 0 ? " " + this.encode(pi.getData()) + "?>" : "?>");
        } else {
            text = ExtendedMetaData.INSTANCE.getFeatureKind(this.feature) == 3 && this.isEntryAttribute() ? String.valueOf(this.getEntryFeature().getName()) + "='" + EcoreUtil.convertToString((EDataType)((EDataType)this.getEntryFeature().getEType()), (Object)this.getEntryValue()) + "'" : (this.getEntryValue() == null ? "<" + this.getEntryFeature().getName() + " xsi:nil=\"true\"/>" : (this.isEntryAttribute() ? this.addEntryFeature(EcoreUtil.convertToString((EDataType)((EDataType)this.getEntryFeature().getEType()), (Object)this.getEntryValue())) : this.addEntryFeature(super.getText(object))));
        }
        return text;
    }

    protected String addEntryFeature(String text) {
        return "<" + this.getEntryFeature().getName() + "> " + text;
    }

    @Override
    public Object getImage(Object object) {
        Object image = null;
        EStructuralFeature entryFeature = this.getEntryFeature();
        image = entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT || entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA || entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT || entryFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION ? EMFEditPlugin.INSTANCE.getImage("full/obj16/TextValue") : (this.isEntryAttribute() ? EMFEditPlugin.INSTANCE.getImage("full/obj16/GenericValue") : (this.getDelegateValue() == null ? EMFEditPlugin.INSTANCE.getImage("full/obj16/Item") : super.getImage(object)));
        return image;
    }

    protected String encode(String s) {
        StringBuffer result = new StringBuffer(s.length());
        int i = 0;
        int len = s.length();
        while (i < len) {
            char c = s.charAt(i);
            switch (c) {
                case '\\': {
                    result.append("\\\\");
                    break;
                }
                case '\b': {
                    result.append("\\b");
                    break;
                }
                case '\t': {
                    result.append("\\t");
                    break;
                }
                case '\n': {
                    result.append("\\n");
                    break;
                }
                case '\f': {
                    result.append("\\f");
                    break;
                }
                case '\r': {
                    result.append("\\r");
                    break;
                }
                default: {
                    result.append(c);
                }
            }
            ++i;
        }
        return result.toString();
    }

    protected String decode(String s) {
        StringBuffer result = new StringBuffer(s.length());
        int i = 0;
        int len = s.length();
        while (i < len) {
            char c = s.charAt(i);
            block0 : switch (c) {
                case '\\': {
                    if (++i < len) {
                        c = s.charAt(i);
                        switch (c) {
                            case '\\': {
                                result.append('\\');
                                break block0;
                            }
                            case 'b': {
                                result.append('\b');
                                break block0;
                            }
                            case 't': {
                                result.append('\t');
                                break block0;
                            }
                            case 'n': {
                                result.append('\n');
                                break block0;
                            }
                            case 'f': {
                                result.append('\f');
                                break block0;
                            }
                            case '\r': {
                                result.append('\r');
                                break block0;
                            }
                        }
                        result.append('\\');
                        --i;
                        break;
                    }
                    result.append(c);
                    break;
                }
                default: {
                    result.append(c);
                }
            }
            ++i;
        }
        return result.toString();
    }

    @Override
    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        if (this.isEntryAttribute()) {
            if (this.propertyDescriptors == null) {
                this.propertyDescriptors = Collections.singletonList(new WrapperItemProvider.WrapperItemPropertyDescriptor(this, this.resourceLocator, this.getEntryFeature()){

                    protected Object getValue(EObject object, EStructuralFeature feature) {
                        FeatureMap featureMap = (FeatureMap)((EObject)FeatureMapEntryWrapperItemProvider.this.owner).eGet(FeatureMapEntryWrapperItemProvider.this.feature);
                        Object result = FeatureMapEntryWrapperItemProvider.this.index >= 0 && FeatureMapEntryWrapperItemProvider.this.index < featureMap.size() ? featureMap.getValue(FeatureMapEntryWrapperItemProvider.this.index) : FeatureMapEntryWrapperItemProvider.this.getEntryValue();
                        return this.needsEncoding(feature) ? FeatureMapEntryWrapperItemProvider.this.encode((String)result) : result;
                    }

                    protected void setValue(EObject object, EStructuralFeature feature, Object value) {
                        if (this.needsEncoding(feature)) {
                            value = FeatureMapEntryWrapperItemProvider.this.decode((String)value);
                        }
                        ((FeatureMap)((EObject)FeatureMapEntryWrapperItemProvider.this.owner).eGet(FeatureMapEntryWrapperItemProvider.this.feature)).setValue(FeatureMapEntryWrapperItemProvider.this.index, value);
                    }

                    protected Command createSetCommand(EditingDomain domain, Object owner, Object feature, Object value) {
                        if (this.needsEncoding(feature)) {
                            value = FeatureMapEntryWrapperItemProvider.this.decode((String)value);
                        }
                        return SetCommand.create(domain, this.getCommandOwner(FeatureMapEntryWrapperItemProvider.this), null, value);
                    }

                    protected boolean needsEncoding(Object feature) {
                        return feature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT || feature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA || feature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT || feature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION;
                    }
                });
            }
            return this.propertyDescriptors;
        }
        return super.getPropertyDescriptors(object);
    }

    @Override
    public Object getEditableValue(Object object) {
        return this.isEntryAttribute() ? this.getEntryValue() : super.getEditableValue(object);
    }

    @Override
    protected boolean isPropertySettable() {
        return this.getEntryFeature().isChangeable();
    }

    @Override
    protected Object getPropertyImage() {
        return this.getPropertyImage(this.getEntryFeature().getEType().getInstanceClass());
    }

    @Override
    public Command createCommand(Object object, EditingDomain domain, Class<? extends Command> commandClass, CommandParameter commandParameter) {
        if (this.getDelegateValue() == null) {
            return this.baseCreateCommand(object, domain, commandClass, commandParameter);
        }
        return super.createCommand(object, domain, commandClass, commandParameter);
    }

    @Override
    protected Command wrapCommand(Command command, Class<? extends Command> commandClass) {
        if (commandClass == CopyCommand.class) {
            return new WrapperItemProvider.WrappingCopyCommand(this, command){

                public IWrapperItemProvider copy() {
                    Iterator i = this.getCommand().getResult().iterator();
                    return new FeatureMapEntryWrapperItemProvider(FeatureMapUtil.createEntry((EStructuralFeature)FeatureMapEntryWrapperItemProvider.this.getEntryFeature(), i.next()), (EObject)FeatureMapEntryWrapperItemProvider.this.owner, (EAttribute)FeatureMapEntryWrapperItemProvider.this.feature, FeatureMapEntryWrapperItemProvider.this.index, FeatureMapEntryWrapperItemProvider.this.adapterFactory, FeatureMapEntryWrapperItemProvider.this.resourceLocator);
                }
            };
        }
        return super.wrapCommand(command, commandClass);
    }

    @Override
    protected Command createSetCommand(EditingDomain domain, Object owner, Object feature, Object value, int index) {
        if (this.getEntryFeature().getEType().isInstance(value)) {
            FeatureMap.Entry entry = FeatureMapUtil.createEntry((EStructuralFeature)this.getEntryFeature(), (Object)value);
            return new WrapperItemProvider.ReplacementAffectedObjectCommand(this, SetCommand.create(domain, this.owner, this.feature, entry, this.index));
        }
        return UnexecutableCommand.INSTANCE;
    }

    @Override
    protected Command createCopyCommand(EditingDomain domain, Object owner, CopyCommand.Helper helper) {
        return new WrapperItemProvider.SimpleCopyCommand(this, domain){

            public IWrapperItemProvider copy() {
                Object entryValueCopy = null;
                Object entryValue = FeatureMapEntryWrapperItemProvider.this.getEntryValue();
                if (entryValue != null) {
                    EDataType dataType = (EDataType)FeatureMapEntryWrapperItemProvider.this.getEntryFeature().getEType();
                    String serialization = EcoreUtil.convertToString((EDataType)dataType, (Object)entryValue);
                    entryValueCopy = EcoreUtil.createFromString((EDataType)dataType, (String)serialization);
                    if (serialization == entryValue && serialization == entryValueCopy) {
                        entryValueCopy = new String((String)entryValue);
                    }
                }
                return new FeatureMapEntryWrapperItemProvider(FeatureMapUtil.createEntry((EStructuralFeature)FeatureMapEntryWrapperItemProvider.this.getEntryFeature(), entryValueCopy), (EObject)FeatureMapEntryWrapperItemProvider.this.owner, (EAttribute)FeatureMapEntryWrapperItemProvider.this.feature, FeatureMapEntryWrapperItemProvider.this.index, FeatureMapEntryWrapperItemProvider.this.adapterFactory);
            }
        };
    }
}

