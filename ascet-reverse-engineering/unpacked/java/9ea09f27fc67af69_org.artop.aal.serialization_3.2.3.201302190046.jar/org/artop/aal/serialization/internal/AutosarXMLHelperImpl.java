/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.AbstractNumericalDatatype
 *  org.artop.aal.common.datatypes.INumericalDataType
 *  org.artop.aal.common.datatypes.ToPrimitiveEList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.XMLHelperImpl
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 */
package org.artop.aal.serialization.internal;

import java.util.List;
import org.artop.aal.common.datatypes.AbstractNumericalDatatype;
import org.artop.aal.common.datatypes.INumericalDataType;
import org.artop.aal.common.datatypes.ToPrimitiveEList;
import org.artop.aal.serialization.internal.util.ArtopTaggedValues;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLHelperImpl;
import org.eclipse.sphinx.platform.util.ReflectUtil;

public class AutosarXMLHelperImpl
extends XMLHelperImpl
implements XMLHelper {
    public AutosarXMLHelperImpl(XMLResource resource) {
        this.setResource(resource);
    }

    public String getQName(EStructuralFeature feature) {
        if (feature.isTransient()) {
            EClass eClass;
            if (feature.eContainer() instanceof EClass && "DocumentRoot".equals((eClass = (EClass)feature.eContainer()).getName())) {
                return feature.getName();
            }
            return null;
        }
        String name = this.extendedMetaData.getName(feature);
        String namespace = this.extendedMetaData.getNamespace(feature);
        String result = name;
        EPackage ePackage = null;
        if (namespace != null) {
            ePackage = this.extendedMetaData.getPackage(namespace);
            result = this.getQName(ePackage, name);
        } else {
            ePackage = feature.getEContainingClass().getEPackage();
            result = this.getQName(ePackage, name);
        }
        if (result.length() == name.length() && this.extendedMetaData.getFeatureKind(feature) == 2) {
            result = this.getQName(ePackage, name, true);
        }
        return result;
    }

    public Object getValue(EObject obj, EStructuralFeature f) {
        ArtopTaggedValues taggedValues = ArtopTaggedValues.get((EModelElement)f);
        if (taggedValues.numericalGetter != null) {
            try {
                Object invoke = ReflectUtil.invokeMethod((Object)obj, (String)taggedValues.numericalGetter, (Object[])new Object[0]);
                if (invoke instanceof INumericalDataType) {
                    return ((INumericalDataType)invoke).encode();
                }
            }
            catch (Throwable ex) {
                throw new RuntimeException(ex);
            }
        }
        return super.getValue(obj, f);
    }

    public void setValue(EObject object, EStructuralFeature feature, Object value, int position) {
        List list;
        if (this.extendedMetaData != null && this.isSimpleFeature(feature) && value instanceof String && ((String)value).length() == 0) {
            return;
        }
        ArtopTaggedValues taggedValues = ArtopTaggedValues.get((EModelElement)feature);
        if (taggedValues.numericalGetter != null && taggedValues.numericalSetter != null) {
            try {
                Object invoke = ReflectUtil.invokeMethod((Object)object, (String)taggedValues.numericalGetter, (Object[])new Object[0]);
                if (invoke instanceof INumericalDataType) {
                    ((INumericalDataType)invoke).decode((String)value);
                    ReflectUtil.invokeMethod((Object)object, (String)taggedValues.numericalSetter, (Object[])new Object[]{invoke});
                    return;
                }
            }
            catch (Throwable ex) {
                if (ex instanceof NumberFormatException) {
                    throw (NumberFormatException)ex;
                }
                throw new RuntimeException(ex);
            }
        }
        if (feature.isMany() && value instanceof String && (list = (List)object.eGet(feature)) instanceof ToPrimitiveEList) {
            ToPrimitiveEList primitiveList = (ToPrimitiveEList)list;
            AbstractNumericalDatatype element = primitiveList.newDelegationElement((String)value);
            primitiveList.getDelegationList().add((Object)element);
            return;
        }
        super.setValue(object, feature, value, position);
    }

    private boolean isSimpleFeature(EStructuralFeature feature) {
        EClass eClass = feature.getEContainingClass();
        return this.extendedMetaData != null ? this.extendedMetaData.getContentKind(eClass) == 2 && this.extendedMetaData.getFeatureKind(feature) == 1 : false;
    }
}

