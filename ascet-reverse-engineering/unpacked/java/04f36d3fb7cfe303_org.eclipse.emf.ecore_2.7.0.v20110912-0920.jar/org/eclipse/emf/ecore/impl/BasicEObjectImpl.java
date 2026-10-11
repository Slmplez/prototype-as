/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.impl.BasicNotifierImpl
 *  org.eclipse.emf.common.util.AbstractTreeIterator
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.WrappedException
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.impl.BasicNotifierImpl;
import org.eclipse.emf.common.util.AbstractTreeIterator;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EContentsEList;
import org.eclipse.emf.ecore.util.ECrossReferenceEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicEObjectImpl
extends BasicNotifierImpl
implements EObject,
InternalEObject {
    private static final String[] ESCAPE;
    protected static final int EVIRTUAL_SET = 0;
    protected static final int EVIRTUAL_UNSET = 1;
    protected static final int EVIRTUAL_GET = 2;
    protected static final int EVIRTUAL_IS_SET = 3;
    protected static final Object EVIRTUAL_NO_VALUE;

    static {
        String[] stringArray = new String[64];
        stringArray[0] = "%00";
        stringArray[1] = "%01";
        stringArray[2] = "%02";
        stringArray[3] = "%03";
        stringArray[4] = "%04";
        stringArray[5] = "%05";
        stringArray[6] = "%06";
        stringArray[7] = "%07";
        stringArray[8] = "%08";
        stringArray[9] = "%09";
        stringArray[10] = "%0A";
        stringArray[11] = "%0B";
        stringArray[12] = "%0C";
        stringArray[13] = "%0D";
        stringArray[14] = "%0E";
        stringArray[15] = "%0F";
        stringArray[16] = "%10";
        stringArray[17] = "%11";
        stringArray[18] = "%12";
        stringArray[19] = "%13";
        stringArray[20] = "%14";
        stringArray[21] = "%15";
        stringArray[22] = "%16";
        stringArray[23] = "%17";
        stringArray[24] = "%18";
        stringArray[25] = "%19";
        stringArray[26] = "%1A";
        stringArray[27] = "%1B";
        stringArray[28] = "%1C";
        stringArray[29] = "%1D";
        stringArray[30] = "%1E";
        stringArray[31] = "%1F";
        stringArray[32] = "%20";
        stringArray[34] = "%22";
        stringArray[35] = "%23";
        stringArray[37] = "%25";
        stringArray[38] = "%26";
        stringArray[39] = "%27";
        stringArray[44] = "%2C";
        stringArray[47] = "%2F";
        stringArray[58] = "%3A";
        stringArray[60] = "%3C";
        stringArray[62] = "%3E";
        ESCAPE = stringArray;
        EVIRTUAL_NO_VALUE = new Object();
    }

    protected BasicEObjectImpl() {
    }

    protected int eStaticFeatureCount() {
        return this.eStaticClass().getFeatureCount();
    }

    protected int eStaticOperationCount() {
        return this.eStaticClass().getOperationCount();
    }

    protected EPropertiesHolder eProperties() {
        throw new UnsupportedOperationException();
    }

    protected EPropertiesHolder eBasicProperties() {
        throw new UnsupportedOperationException();
    }

    protected boolean eHasSettings() {
        EPropertiesHolder eProperties = this.eBasicProperties();
        return eProperties != null && eProperties.hasSettings();
    }

    protected EStructuralFeature.Internal.DynamicValueHolder eSettings() {
        if (!this.eHasSettings()) {
            int size = this.eClass().getFeatureCount() - this.eStaticFeatureCount();
            this.eProperties().allocateSettings(size);
        }
        return this.eBasicProperties();
    }

    protected int eDynamicFeatureID(EStructuralFeature eStructuralFeature) {
        return this.eClass().getFeatureID(eStructuralFeature) - this.eStaticFeatureCount();
    }

    protected EStructuralFeature eDynamicFeature(int dynamicFeatureID) {
        return this.eClass().getEStructuralFeature(dynamicFeatureID + this.eStaticFeatureCount());
    }

    @Override
    public String eURIFragmentSegment(EStructuralFeature eStructuralFeature, EObject eObject) {
        if (eStructuralFeature == null) {
            EContentsEList.FeatureIterator crossReferences = (EContentsEList.FeatureIterator)((InternalEList)this.eCrossReferences()).basicIterator();
            while (crossReferences.hasNext()) {
                EObject crossReference = (EObject)crossReferences.next();
                if (crossReference != eObject) continue;
                eStructuralFeature = crossReferences.feature();
            }
        }
        StringBuilder result = new StringBuilder();
        result.append('@');
        result.append(eStructuralFeature.getName());
        if (eStructuralFeature instanceof EAttribute) {
            FeatureMap featureMap = (FeatureMap)this.eGet(eStructuralFeature, false);
            int i = 0;
            int size = featureMap.size();
            while (i < size) {
                EStructuralFeature entryFeature;
                if (featureMap.getValue(i) == eObject && (entryFeature = featureMap.getEStructuralFeature(i)) instanceof EReference && ((EReference)entryFeature).isContainment()) {
                    result.append('.');
                    result.append(i);
                    return result.toString();
                }
                ++i;
            }
            result.append(".-1");
        } else if (eStructuralFeature.isMany()) {
            EList<EAttribute> eKeys = ((EReference)eStructuralFeature).getEKeys();
            if (eKeys.isEmpty()) {
                EList eList = (EList)this.eGet(eStructuralFeature, false);
                int index = eList.indexOf((Object)eObject);
                result.append('.');
                result.append(index);
            } else {
                EAttribute[] eAttributes = (EAttribute[])((BasicEList)eKeys).data();
                result.append('[');
                int i = 0;
                int size = eAttributes.length;
                while (i < size) {
                    EAttribute eAttribute = eAttributes[i];
                    if (eAttribute == null) break;
                    if (i != 0) {
                        result.append(',');
                    }
                    result.append(eAttribute.getName());
                    result.append('=');
                    EDataType eDataType = eAttribute.getEAttributeType();
                    EFactory eFactory = eDataType.getEPackage().getEFactoryInstance();
                    if (eAttribute.isMany()) {
                        List values = (List)eObject.eGet(eAttribute);
                        result.append('[');
                        if (!values.isEmpty()) {
                            Iterator j = values.iterator();
                            BasicEObjectImpl.eEncodeValue(result, eFactory, eDataType, j.next());
                            while (j.hasNext()) {
                                result.append(',');
                                BasicEObjectImpl.eEncodeValue(result, eFactory, eDataType, j.next());
                            }
                        }
                        result.append(']');
                    } else {
                        BasicEObjectImpl.eEncodeValue(result, eFactory, eDataType, eObject.eGet(eAttribute));
                    }
                    ++i;
                }
                result.append(']');
            }
        }
        return result.toString();
    }

    private static void eEncodeValue(StringBuilder result, EFactory eFactory, EDataType eDataType, Object value) {
        String stringValue = eFactory.convertToString(eDataType, value);
        if (stringValue == null) {
            result.append("null");
        } else {
            int length = stringValue.length();
            result.ensureCapacity(result.length() + length + 2);
            result.append('\'');
            int i = 0;
            while (i < length) {
                String escape;
                char character = stringValue.charAt(i);
                if (character < ESCAPE.length && (escape = ESCAPE[character]) != null) {
                    result.append(escape);
                } else {
                    result.append(character);
                }
                ++i;
            }
            result.append('\'');
        }
    }

    static String eEncodeValue(String value) {
        int length = value.length();
        StringBuilder result = null;
        int i = 0;
        while (i < length) {
            String escape;
            char character = value.charAt(i);
            if (character < ESCAPE.length && (escape = ESCAPE[character]) != null) {
                if (result == null) {
                    result = new StringBuilder(length + 2);
                    result.append(value, 0, i);
                }
                result.append(escape);
            } else if (result != null) {
                result.append(character);
            }
            ++i;
        }
        return result == null ? value : result.toString();
    }

    @Override
    public EObject eObjectForURIFragmentSegment(String uriFragmentSegment) {
        int lastIndex = uriFragmentSegment.length() - 1;
        char lastChar = uriFragmentSegment.charAt(lastIndex);
        if (lastChar == ']') {
            int index = uriFragmentSegment.indexOf(91);
            if (index >= 0) {
                EReference eReference = this.eReference(uriFragmentSegment.substring(1, index));
                String predicate = uriFragmentSegment.substring(index + 1, lastIndex);
                return this.eObjectForURIFragmentPredicate(predicate, eReference);
            }
        } else {
            int dotIndex = -1;
            if (Character.isDigit(lastChar) && (dotIndex = uriFragmentSegment.lastIndexOf(46, lastIndex - 1)) >= 0) {
                EList eList = (EList)this.eGet(this.eStructuralFeature(uriFragmentSegment.substring(1, dotIndex)), false);
                int position = 0;
                try {
                    position = Integer.parseInt(uriFragmentSegment.substring(dotIndex + 1));
                }
                catch (NumberFormatException exception) {
                    throw new WrappedException((Exception)exception);
                }
                if (position < eList.size()) {
                    Object result = eList.get(position);
                    if (result instanceof FeatureMap.Entry) {
                        result = ((FeatureMap.Entry)result).getValue();
                    }
                    return (EObject)result;
                }
            }
            if (dotIndex < 0) {
                return (EObject)this.eGet(this.eStructuralFeature(uriFragmentSegment.substring(1)), false);
            }
        }
        return null;
    }

    private EObject eObjectForURIFragmentPredicate(String predicate, EReference eReference) {
        ArrayList<FeatureMap.Entry> featureMapEntries = new ArrayList<FeatureMap.Entry>();
        int length = predicate.length();
        EClass eReferenceType = eReference.getEReferenceType();
        int i = 0;
        while (i < length) {
            int index = predicate.indexOf(61, i);
            EAttribute eAttribute = this.eAttribute(eReferenceType, predicate.substring(i, index));
            EDataType eDataType = eAttribute.getEAttributeType();
            EFactory eFactory = eDataType.getEPackage().getEFactoryInstance();
            switch (predicate.charAt(++index)) {
                case '\'': {
                    int end = predicate.indexOf(39, ++index);
                    BasicEObjectImpl.addEntry(featureMapEntries, eAttribute, BasicEObjectImpl.eDecodeValue(predicate.substring(index, end), eFactory, eDataType));
                    i = end + 1;
                    break;
                }
                case '\"': {
                    int end = predicate.indexOf(34, ++index);
                    BasicEObjectImpl.addEntry(featureMapEntries, eAttribute, BasicEObjectImpl.eDecodeValue(predicate.substring(index, end), eFactory, eDataType));
                    i = end + 1;
                    break;
                }
                case '[': {
                    ArrayList<Object> values = new ArrayList<Object>();
                    BasicEObjectImpl.addEntry(featureMapEntries, eAttribute, values);
                    block16: while (true) {
                        switch (predicate.charAt(++index)) {
                            case '\'': {
                                int end = predicate.indexOf(39, ++index);
                                values.add(BasicEObjectImpl.eDecodeValue(predicate.substring(index, end), eFactory, eDataType));
                                index = end + 1;
                                break;
                            }
                            case '\"': {
                                int end = predicate.indexOf(34, ++index);
                                values.add(BasicEObjectImpl.eDecodeValue(predicate.substring(index, end), eFactory, eDataType));
                                index = end + 1;
                                break;
                            }
                            case 'n': {
                                if (predicate.indexOf("ull", ++index) != index) {
                                    throw new RuntimeException("Expecting null");
                                }
                                values.add(null);
                                index += 3;
                            }
                        }
                        if (index >= length) break;
                        switch (predicate.charAt(index)) {
                            case ',': {
                                continue block16;
                            }
                            case ']': {
                                break block16;
                            }
                            default: {
                                throw new RuntimeException("Expecting , or ]");
                            }
                        }
                        break;
                    }
                    i = index + 1;
                    break;
                }
                case 'n': {
                    if (predicate.indexOf("ull", ++index) != index) {
                        throw new RuntimeException("Expecting null");
                    }
                    BasicEObjectImpl.addEntry(featureMapEntries, eAttribute, null);
                    i = index + 3;
                }
            }
            if (i >= length) break;
            if (predicate.charAt(i) != ',') {
                throw new RuntimeException("Expecting ,");
            }
            ++i;
        }
        return this.eObjectForURIFragmentPredicate(featureMapEntries, eReference);
    }

    private static final void addEntry(List<FeatureMap.Entry> featureMapEntries, final EAttribute eAttribute, final Object value) {
        featureMapEntries.add(new FeatureMap.Entry(){

            public EStructuralFeature getEStructuralFeature() {
                return eAttribute;
            }

            public Object getValue() {
                return value;
            }
        });
    }

    private static Object eDecodeValue(String encodedValue, EFactory eFactory, EDataType eDataType) {
        String literal = URI.decode((String)encodedValue);
        Object value = eFactory.createFromString(eDataType, literal);
        return value;
    }

    private EObject eObjectForURIFragmentPredicate(List<FeatureMap.Entry> predicate, EReference eReference) {
        int size = predicate.size();
        EList list = (EList)this.eGet(eReference, false);
        block0: for (EObject eObject : list) {
            int i = 0;
            while (i < size) {
                FeatureMap.Entry entry = predicate.get(i);
                Object entryValue = entry.getValue();
                EStructuralFeature entryFeature = entry.getEStructuralFeature();
                Object actualValue = eObject.eGet(entryFeature, false);
                if (entryValue == null ? actualValue != null : !entryValue.equals(actualValue)) continue block0;
                ++i;
            }
            return eObject;
        }
        return null;
    }

    private EStructuralFeature eStructuralFeature(String name) throws IllegalArgumentException {
        EStructuralFeature eStructuralFeature = this.eClass().getEStructuralFeature(name);
        if (eStructuralFeature == null) {
            throw new IllegalArgumentException("The feature '" + name + "' is not a valid feature");
        }
        return eStructuralFeature;
    }

    private EReference eReference(String name) throws IllegalArgumentException {
        EStructuralFeature eStructuralFeature = this.eClass().getEStructuralFeature(name);
        if (eStructuralFeature instanceof EReference) {
            return (EReference)eStructuralFeature;
        }
        throw new IllegalArgumentException("The feature '" + name + "' is not a valid reference");
    }

    private EAttribute eAttribute(EClass eClass, String name) throws IllegalArgumentException {
        EStructuralFeature eStructuralFeature = eClass.getEStructuralFeature(name);
        if (eStructuralFeature instanceof EAttribute) {
            return (EAttribute)eStructuralFeature;
        }
        throw new IllegalArgumentException("The feature '" + name + "' is not a valid attribute");
    }

    public boolean eContains(EObject eObject) {
        return EcoreUtil.isAncestor(this, eObject);
    }

    @Override
    public EObject eContainer() {
        InternalEObject result = this.eInternalContainer();
        if (result != null) {
            EObject resolved;
            int eContainerFeatureID = this.eContainerFeatureID();
            if (result.eIsProxy() && (resolved = this.eResolveProxy(result)) != result) {
                NotificationChain notificationChain = this.eBasicRemoveFromContainer(null);
                this.eBasicSetContainer((InternalEObject)resolved, eContainerFeatureID);
                if (notificationChain != null) {
                    notificationChain.dispatch();
                }
                if (this.eNotificationRequired() && eContainerFeatureID > -1) {
                    this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, eContainerFeatureID, (Object)result, (Object)resolved));
                }
                return resolved;
            }
        }
        return result;
    }

    @Override
    public InternalEObject eInternalContainer() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int eContainerFeatureID() {
        throw new UnsupportedOperationException();
    }

    protected void eBasicSetContainer(InternalEObject newContainer, int newContainerFeatureID) {
        throw new UnsupportedOperationException();
    }

    @Override
    public EList<EObject> eContents() {
        EList<EObject> result = this.eProperties().getEContents();
        if (result == null) {
            result = EContentsEList.createEContentsEList(this);
            this.eBasicProperties().setEContents(result);
        }
        return result;
    }

    @Override
    public EList<EObject> eCrossReferences() {
        EList<EObject> result = this.eProperties().getECrossReferences();
        if (result == null) {
            result = ECrossReferenceEList.createECrossReferenceEList(this);
            this.eBasicProperties().setECrossReferences(result);
        }
        return result;
    }

    @Override
    public TreeIterator<EObject> eAllContents() {
        return new AbstractTreeIterator<EObject>((Object)this, false){
            private static final long serialVersionUID = 1L;

            public Iterator<EObject> getChildren(Object object) {
                return ((EObject)object).eContents().iterator();
            }
        };
    }

    @Override
    public EReference eContainmentFeature() {
        return BasicEObjectImpl.eContainmentFeature(this, this.eInternalContainer(), this.eContainerFeatureID());
    }

    protected static EReference eContainmentFeature(EObject eObject, EObject eContainer, int eContainerFeatureID) {
        if (eContainer == null) {
            return null;
        }
        if (eContainerFeatureID <= -1) {
            EStructuralFeature eFeature = eContainer.eClass().getEStructuralFeature(-1 - eContainerFeatureID);
            if (eFeature instanceof EReference) {
                return (EReference)eFeature;
            }
            FeatureMap featureMap = (FeatureMap)eContainer.eGet(eFeature);
            int i = 0;
            int size = featureMap.size();
            while (i < size) {
                EReference entryReference;
                EStructuralFeature entryFeature;
                if (featureMap.getValue(i) == eObject && (entryFeature = featureMap.getEStructuralFeature(i)) instanceof EReference && (entryReference = (EReference)entryFeature).isContainment()) {
                    return entryReference;
                }
                ++i;
            }
            throw new IllegalStateException("The containment feature could not be located");
        }
        return ((EReference)eObject.eClass().getEStructuralFeature(eContainerFeatureID)).getEOpposite();
    }

    @Override
    public EStructuralFeature eContainingFeature() {
        InternalEObject eContainer = this.eInternalContainer();
        if (eContainer == null) {
            return null;
        }
        int eContainerFeatureID = this.eContainerFeatureID();
        return eContainerFeatureID <= -1 ? eContainer.eClass().getEStructuralFeature(-1 - eContainerFeatureID) : ((EReference)this.eClass().getEStructuralFeature(eContainerFeatureID)).getEOpposite();
    }

    @Override
    public Resource.Internal eDirectResource() {
        EPropertiesHolder eProperties = this.eBasicProperties();
        return eProperties == null ? null : eProperties.getEResource();
    }

    @Override
    public Resource eResource() {
        return this.eInternalResource();
    }

    @Override
    public Resource.Internal eInternalResource() {
        Resource.Internal result = this.eDirectResource();
        if (result == null) {
            int count = 0;
            InternalEObject eContainer = this.eInternalContainer();
            while (eContainer != null) {
                if (++count > 100000) {
                    return eContainer.eInternalResource();
                }
                result = eContainer.eDirectResource();
                if (result != null || eContainer == this) break;
                eContainer = eContainer.eInternalContainer();
            }
        }
        return result;
    }

    @Override
    public NotificationChain eSetResource(Resource.Internal resource, NotificationChain notifications) {
        InternalEObject oldContainer;
        Resource.Internal oldResource = this.eDirectResource();
        if (oldResource != null) {
            notifications = ((InternalEList)oldResource.getContents()).basicRemove(this, notifications);
            if (resource != null) {
                oldResource.detached(this);
            }
        }
        if ((oldContainer = this.eInternalContainer()) != null) {
            if (this.eContainmentFeature().isResolveProxies()) {
                Resource.Internal oldContainerResource = oldContainer.eInternalResource();
                if (oldContainerResource != null) {
                    if (resource == null) {
                        oldContainerResource.attached(this);
                    } else if (oldResource == null) {
                        oldContainerResource.detached(this);
                    }
                }
            } else {
                notifications = this.eBasicRemoveFromContainer(notifications);
                notifications = this.eBasicSetContainer(null, -1, notifications);
            }
        }
        this.eSetDirectResource(resource);
        return notifications;
    }

    protected void eSetDirectResource(Resource.Internal resource) {
        this.eProperties().setEResource(resource);
    }

    @Override
    public Object eGet(EStructuralFeature eFeature) {
        return this.eGet(eFeature, true);
    }

    @Override
    public Object eGet(EStructuralFeature eFeature, boolean resolve) {
        return this.eGet(eFeature, resolve, true);
    }

    @Override
    public Object eGet(EStructuralFeature eFeature, boolean resolve, boolean coreType) {
        int featureID = this.eDerivedStructuralFeatureID(eFeature);
        if (featureID >= 0) {
            return this.eGet(featureID, resolve, coreType);
        }
        return this.eOpenGet(eFeature, resolve);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        EStructuralFeature eFeature = this.eClass().getEStructuralFeature(featureID);
        assert (eFeature != null) : "Invalid featureID: " + featureID;
        int dynamicFeatureID = featureID - this.eStaticFeatureCount();
        return dynamicFeatureID < 0 ? this.eGet(eFeature, resolve) : this.eSettingDelegate(eFeature).dynamicGet(this, this.eSettings(), dynamicFeatureID, resolve, coreType);
    }

    public Object eDynamicGet(EStructuralFeature eFeature, boolean resolve) {
        return this.eDynamicGet(this.eDynamicFeatureID(eFeature), eFeature, resolve, true);
    }

    public Object eDynamicGet(int featureID, boolean resolve, boolean coreType) {
        return this.eDynamicGet(featureID - this.eStaticFeatureCount(), this.eClass().getEStructuralFeature(featureID), resolve, coreType);
    }

    protected Object eDynamicGet(int dynamicFeatureID, EStructuralFeature eFeature, boolean resolve, boolean coreType) {
        return dynamicFeatureID < 0 ? this.eOpenGet(eFeature, resolve) : this.eSettingDelegate(eFeature).dynamicGet(this, this.eSettings(), dynamicFeatureID, resolve, coreType);
    }

    public Object eOpenGet(EStructuralFeature eFeature, boolean resolve) {
        EStructuralFeature openFeature = ExtendedMetaData.INSTANCE.getAffiliation(this.eClass(), eFeature);
        if (openFeature != null) {
            if (!FeatureMapUtil.isFeatureMap(openFeature)) {
                openFeature = ExtendedMetaData.INSTANCE.getGroup(openFeature);
            }
            FeatureMap featureMap = (FeatureMap)this.eGet(openFeature);
            return ((FeatureMap.Internal)featureMap).get(eFeature, resolve);
        }
        throw new IllegalArgumentException("The feature '" + eFeature.getName() + "' is not a valid feature");
    }

    @Override
    public void eSet(EStructuralFeature eFeature, Object newValue) {
        int featureID = this.eDerivedStructuralFeatureID(eFeature);
        if (featureID >= 0) {
            this.eSet(featureID, newValue);
        } else {
            this.eOpenSet(eFeature, newValue);
        }
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        EStructuralFeature eFeature = this.eClass().getEStructuralFeature(featureID);
        int dynamicFeatureID = featureID - this.eStaticFeatureCount();
        if (dynamicFeatureID < 0) {
            if (eFeature == null) {
                throw new IllegalArgumentException("The feature ID" + featureID + " is not a valid feature ID");
            }
            if (!eFeature.isChangeable()) {
                throw new IllegalArgumentException("The feature '" + eFeature.getName() + "' is not a valid changeable feature");
            }
            this.eSet(eFeature, newValue);
        } else {
            assert (eFeature != null) : "Invalid featureID: " + featureID;
            this.eDynamicSet(dynamicFeatureID, eFeature, newValue);
        }
    }

    public void eDynamicSet(EStructuralFeature eFeature, Object newValue) {
        this.eDynamicSet(this.eDynamicFeatureID(eFeature), eFeature, newValue);
    }

    public void eDynamicSet(int featureID, Object newValue) {
        this.eDynamicSet(featureID - this.eStaticFeatureCount(), this.eClass().getEStructuralFeature(featureID), newValue);
    }

    protected void eDynamicSet(int dynamicFeatureID, EStructuralFeature eFeature, Object newValue) {
        if (dynamicFeatureID < 0) {
            this.eOpenSet(eFeature, newValue);
        } else {
            if (!eFeature.isChangeable()) {
                throw new IllegalArgumentException("The feature '" + eFeature.getName() + "' is not a valid changeable feature");
            }
            this.eSettingDelegate(eFeature).dynamicSet(this, this.eSettings(), dynamicFeatureID, newValue);
        }
    }

    public void eOpenSet(EStructuralFeature eFeature, Object newValue) {
        EStructuralFeature openFeature = ExtendedMetaData.INSTANCE.getAffiliation(this.eClass(), eFeature);
        if (openFeature != null) {
            if (!FeatureMapUtil.isFeatureMap(openFeature)) {
                openFeature = ExtendedMetaData.INSTANCE.getGroup(openFeature);
            }
        } else {
            throw new IllegalArgumentException("The feature '" + eFeature.getName() + "' is not a valid changeable feature");
        }
        FeatureMap featureMap = (FeatureMap)this.eGet(openFeature);
        ((FeatureMap.Internal)featureMap).set(eFeature, newValue);
    }

    @Override
    public void eUnset(EStructuralFeature eFeature) {
        int featureID = this.eDerivedStructuralFeatureID(eFeature);
        if (featureID >= 0) {
            this.eUnset(featureID);
        } else {
            this.eOpenUnset(eFeature);
        }
    }

    @Override
    public void eUnset(int featureID) {
        EStructuralFeature eFeature = this.eClass().getEStructuralFeature(featureID);
        int dynamicFeatureID = featureID - this.eStaticFeatureCount();
        if (dynamicFeatureID < 0) {
            if (eFeature == null) {
                throw new IllegalArgumentException("The feature ID" + featureID + " is not a valid feature ID");
            }
            if (!eFeature.isChangeable()) {
                throw new IllegalArgumentException("The feature '" + eFeature.getName() + "' is not a valid changeable feature");
            }
            this.eUnset(eFeature);
        } else {
            assert (eFeature != null) : "Invalid featureID: " + featureID;
            this.eDynamicUnset(dynamicFeatureID, eFeature);
        }
    }

    public void eDynamicUnset(EStructuralFeature eFeature) {
        this.eDynamicUnset(this.eDynamicFeatureID(eFeature), eFeature);
    }

    public void eDynamicUnset(int featureID) {
        this.eDynamicUnset(featureID - this.eStaticFeatureCount(), this.eClass().getEStructuralFeature(featureID));
    }

    protected void eDynamicUnset(int dynamicFeatureID, EStructuralFeature eFeature) {
        if (dynamicFeatureID < 0) {
            this.eOpenUnset(eFeature);
        } else {
            if (!eFeature.isChangeable()) {
                throw new IllegalArgumentException("The feature '" + eFeature.getName() + "' is not a valid changeable feature");
            }
            this.eSettingDelegate(eFeature).dynamicUnset(this, this.eSettings(), dynamicFeatureID);
        }
    }

    public void eOpenUnset(EStructuralFeature eFeature) {
        EStructuralFeature openFeature = ExtendedMetaData.INSTANCE.getAffiliation(this.eClass(), eFeature);
        if (openFeature != null) {
            if (!FeatureMapUtil.isFeatureMap(openFeature)) {
                openFeature = ExtendedMetaData.INSTANCE.getGroup(openFeature);
            }
        } else {
            throw new IllegalArgumentException("The feature '" + eFeature.getName() + "' is not a valid changeable feature");
        }
        FeatureMap featureMap = (FeatureMap)this.eGet(openFeature);
        ((FeatureMap.Internal)featureMap).unset(eFeature);
    }

    @Override
    public boolean eIsSet(EStructuralFeature eFeature) {
        int featureID = this.eDerivedStructuralFeatureID(eFeature);
        if (featureID >= 0) {
            return this.eIsSet(featureID);
        }
        return this.eOpenIsSet(eFeature);
    }

    @Override
    public boolean eIsSet(int featureID) {
        EStructuralFeature eFeature = this.eClass().getEStructuralFeature(featureID);
        assert (eFeature != null) : "Invalid featureID: " + featureID;
        int dynamicFeatureID = featureID - this.eStaticFeatureCount();
        return dynamicFeatureID < 0 ? this.eIsSet(eFeature) : this.eDynamicIsSet(dynamicFeatureID, eFeature);
    }

    public boolean eDynamicIsSet(EStructuralFeature eFeature) {
        return this.eDynamicIsSet(this.eDynamicFeatureID(eFeature), eFeature);
    }

    public boolean eDynamicIsSet(int featureID) {
        return this.eDynamicIsSet(featureID - this.eStaticFeatureCount(), this.eClass().getEStructuralFeature(featureID));
    }

    protected boolean eDynamicIsSet(int dynamicFeatureID, EStructuralFeature eFeature) {
        return dynamicFeatureID < 0 ? this.eOpenIsSet(eFeature) : this.eSettingDelegate(eFeature).dynamicIsSet(this, this.eSettings(), dynamicFeatureID);
    }

    public boolean eOpenIsSet(EStructuralFeature eFeature) {
        EStructuralFeature openFeature = ExtendedMetaData.INSTANCE.getAffiliation(this.eClass(), eFeature);
        if (openFeature != null) {
            if (!FeatureMapUtil.isFeatureMap(openFeature)) {
                openFeature = ExtendedMetaData.INSTANCE.getGroup(openFeature);
            }
            FeatureMap featureMap = (FeatureMap)this.eGet(openFeature);
            return ((FeatureMap.Internal)featureMap).isSet(eFeature);
        }
        throw new IllegalArgumentException("The feature '" + eFeature.getName() + "' is not a valid feature");
    }

    @Override
    public NotificationChain eBasicSetContainer(InternalEObject newContainer, int newContainerFeatureID, NotificationChain msgs) {
        InternalEObject oldContainer = this.eInternalContainer();
        Resource.Internal oldResource = this.eDirectResource();
        Resource.Internal newResource = null;
        if (oldResource != null) {
            if (newContainer != null && !BasicEObjectImpl.eContainmentFeature(this, newContainer, newContainerFeatureID).isResolveProxies()) {
                msgs = ((InternalEList)oldResource.getContents()).basicRemove(this, (NotificationChain)msgs);
                this.eSetDirectResource(null);
                newResource = newContainer.eInternalResource();
            } else {
                oldResource = null;
            }
        } else {
            if (oldContainer != null) {
                oldResource = oldContainer.eInternalResource();
            }
            if (newContainer != null) {
                newResource = newContainer.eInternalResource();
            }
        }
        if (oldResource != newResource && oldResource != null) {
            oldResource.detached(this);
        }
        int oldContainerFeatureID = this.eContainerFeatureID();
        this.eBasicSetContainer(newContainer, newContainerFeatureID);
        if (oldResource != newResource && newResource != null) {
            newResource.attached(this);
        }
        if (this.eNotificationRequired()) {
            ENotificationImpl notification;
            if (oldContainer != null && oldContainerFeatureID >= 0 && oldContainerFeatureID != newContainerFeatureID) {
                notification = new ENotificationImpl((InternalEObject)this, 1, oldContainerFeatureID, (Object)oldContainer, null);
                if (msgs == null) {
                    msgs = notification;
                } else {
                    msgs.add((Notification)notification);
                }
            }
            if (newContainerFeatureID >= 0) {
                notification = new ENotificationImpl((InternalEObject)this, 1, newContainerFeatureID, (Object)(oldContainerFeatureID == newContainerFeatureID ? oldContainer : null), (Object)newContainer);
                if (msgs == null) {
                    msgs = notification;
                } else {
                    msgs.add((Notification)notification);
                }
            }
        }
        return msgs;
    }

    @Override
    public NotificationChain eBasicRemoveFromContainer(NotificationChain msgs) {
        int eContainerFeatureID = this.eContainerFeatureID();
        if (eContainerFeatureID >= 0) {
            return this.eBasicRemoveFromContainerFeature(msgs);
        }
        return this.eInternalContainer().eInverseRemove(this, -1 - eContainerFeatureID, null, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        return this.eDynamicBasicRemoveFromContainer(msgs);
    }

    public NotificationChain eDynamicBasicRemoveFromContainer(NotificationChain msgs) {
        EReference inverseFeature = ((EReference)this.eClass().getEStructuralFeature(this.eContainerFeatureID())).getEOpposite();
        return this.eInternalContainer().eInverseRemove(this, inverseFeature.getFeatureID(), inverseFeature.getContainerClass(), msgs);
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, Class<?> baseClass, NotificationChain msgs) {
        if (featureID >= 0) {
            return this.eInverseAdd(otherEnd, this.eDerivedStructuralFeatureID(featureID, baseClass), msgs);
        }
        if (this.eInternalContainer() != null) {
            msgs = this.eBasicRemoveFromContainer(msgs);
        }
        return this.eBasicSetContainer(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eDynamicInverseAdd(InternalEObject otherEnd, int featureID, Class<?> inverseClass, NotificationChain msgs) {
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    protected NotificationChain eDynamicInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        EStructuralFeature.Internal feature = (EStructuralFeature.Internal)this.eClass().getEStructuralFeature(featureID);
        return feature.getSettingDelegate().dynamicInverseAdd(this, this.eSettings(), featureID - this.eStaticFeatureCount(), otherEnd, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, Class<?> baseClass, NotificationChain msgs) {
        if (featureID >= 0) {
            return this.eInverseRemove(otherEnd, this.eDerivedStructuralFeatureID(featureID, baseClass), msgs);
        }
        return this.eBasicSetContainer(null, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eDynamicInverseRemove(InternalEObject otherEnd, int featureID, Class<?> inverseClass, NotificationChain msgs) {
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    protected NotificationChain eDynamicInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        EStructuralFeature.Internal feature = (EStructuralFeature.Internal)this.eClass().getEStructuralFeature(featureID);
        return feature.getSettingDelegate().dynamicInverseRemove(this, this.eSettings(), featureID - this.eStaticFeatureCount(), otherEnd, msgs);
    }

    @Override
    public URI eProxyURI() {
        return this.eBasicProperties() == null ? null : this.eBasicProperties().getEProxyURI();
    }

    @Override
    public void eSetProxyURI(URI uri) {
        this.eProperties().setEProxyURI(uri);
    }

    @Override
    public EObject eResolveProxy(InternalEObject proxy) {
        return EcoreUtil.resolve((EObject)proxy, this);
    }

    @Override
    public boolean eIsProxy() {
        return this.eBasicProperties() != null && this.eBasicProperties().getEProxyURI() != null;
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        return derivedFeatureID;
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        return baseFeatureID;
    }

    public int eDerivedStructuralFeatureID(EStructuralFeature eStructuralFeature) {
        Class<?> containerClass = eStructuralFeature.getContainerClass();
        if (containerClass == null) {
            return this.eClass().getFeatureID(eStructuralFeature);
        }
        assert (this.eClass().getEAllStructuralFeatures().contains((Object)eStructuralFeature)) : "The feature '" + eStructuralFeature.getName() + "' is not a valid feature";
        return this.eDerivedStructuralFeatureID(eStructuralFeature.getFeatureID(), containerClass);
    }

    @Override
    public int eDerivedOperationID(int baseOperationID, Class<?> baseClass) {
        return baseOperationID;
    }

    public int eDerivedOperationID(EOperation eOperation) {
        Class<?> containerClass = eOperation.getEContainingClass().getInstanceClass();
        if (containerClass == null) {
            EClass eClass;
            EOperation override = (eClass = this.eClass()).getOverride(eOperation);
            return eClass.getOperationID(override != null ? override : eOperation);
        }
        assert (this.eClass().getEAllOperations().contains((Object)eOperation)) : "The operation '" + eOperation.getName() + "' is not a valid operation";
        return this.eDerivedOperationID(eOperation.getOperationID(), containerClass);
    }

    @Override
    public EClass eClass() {
        EClass result;
        if (this.eBasicProperties() != null && (result = this.eBasicProperties().getEClass()) != null) {
            return result;
        }
        return this.eStaticClass();
    }

    protected EClass eStaticClass() {
        return EcorePackage.eINSTANCE.getEObject();
    }

    protected EClass eDynamicClass() {
        return this.eBasicProperties() == null ? null : this.eBasicProperties().getEClass();
    }

    @Override
    public void eSetClass(EClass eClass) {
        this.eProperties().setEClass(eClass);
    }

    protected EStructuralFeature.Internal.SettingDelegate eSettingDelegate(EStructuralFeature eFeature) {
        return ((EStructuralFeature.Internal)eFeature).getSettingDelegate();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public EStructuralFeature.Setting eSetting(final EStructuralFeature eFeature) {
        int dynamicIndex;
        EClass eClass = this.eClass();
        int index = eClass.getFeatureID(eFeature);
        if (index >= (dynamicIndex = this.eStaticFeatureCount())) {
            return this.eSettingDelegate(eFeature).dynamicSetting(this, this.eSettings(), index - dynamicIndex);
        }
        if (index <= -1) {
            EStructuralFeature openFeature = ExtendedMetaData.INSTANCE.getAffiliation(eClass, eFeature);
            if (openFeature == null) throw new IllegalArgumentException("The feature '" + eFeature.getName() + "' is not a valid feature");
            if (!FeatureMapUtil.isFeatureMap(openFeature)) {
                openFeature = ExtendedMetaData.INSTANCE.getGroup(openFeature);
            }
            FeatureMap featureMap = (FeatureMap)this.eGet(openFeature);
            int upperBound = openFeature.getUpperBound();
            if (upperBound > 1) return (EStructuralFeature.Setting)((FeatureMap.Internal)featureMap).get(eFeature, false);
            if (upperBound != -1) return new EStructuralFeature.Setting(){

                public EObject getEObject() {
                    return BasicEObjectImpl.this;
                }

                public EStructuralFeature getEStructuralFeature() {
                    return eFeature;
                }

                public Object get(boolean resolve) {
                    return BasicEObjectImpl.this.eGet(eFeature, resolve);
                }

                public void set(Object newValue) {
                    BasicEObjectImpl.this.eSet(eFeature, newValue);
                }

                public boolean isSet() {
                    return BasicEObjectImpl.this.eIsSet(eFeature);
                }

                public void unset() {
                    BasicEObjectImpl.this.eUnset(eFeature);
                }
            };
            return (EStructuralFeature.Setting)((FeatureMap.Internal)featureMap).get(eFeature, false);
        }
        if (!eFeature.isMany()) return new /* invalid duplicate definition of identical inner class */;
        return (EStructuralFeature.Setting)this.eGet(eFeature, false);
    }

    protected EOperation.Internal.InvocationDelegate eInvocationDelegate(EOperation eOperation) {
        return ((EOperation.Internal)eOperation).getInvocationDelegate();
    }

    @Override
    public InternalEObject.EStore eStore() {
        return null;
    }

    @Override
    public void eSetStore(InternalEObject.EStore store) {
        throw new UnsupportedOperationException();
    }

    protected Adapter[] eContainerAdapterArray() {
        InternalEObject eInternalContainer = this.eInternalContainer();
        return eInternalContainer instanceof BasicEObjectImpl ? ((BasicEObjectImpl)eInternalContainer).eBasicAdapterArray() : null;
    }

    protected static int eVirtualBitCount(int value) {
        value -= value >>> 1 & 0x55555555;
        value = (value & 0x33333333) + (value >>> 2 & 0x33333333);
        value = value + (value >>> 4) & 0xF0F0F0F;
        value += value >>> 8;
        value += value >>> 16;
        return value & 0x3F;
    }

    protected int eVirtualIndexBits(int offset) {
        throw new UnsupportedOperationException();
    }

    protected void eSetVirtualIndexBits(int offset, int newIndexBits) {
        throw new UnsupportedOperationException();
    }

    protected int eVirtualIndex(int eDerivedStructuralFeatureID, int action) {
        int offset = eDerivedStructuralFeatureID >>> 5;
        int bits = this.eVirtualIndexBits(offset);
        int bitIndex = eDerivedStructuralFeatureID & 0x1F;
        int bit = bits >>> bitIndex & 1;
        switch (action) {
            case 3: {
                return bit - 1;
            }
            case 1: 
            case 2: {
                if (bit != 0) break;
                return -1;
            }
        }
        if (bit == action) {
            this.eSetVirtualIndexBits(offset, bits ^ 1 << bitIndex);
        }
        int result = BasicEObjectImpl.eVirtualBitCount(bitIndex == 0 ? 0 : bits << 32 - bitIndex);
        int i = offset;
        while (--i >= 0) {
            result += BasicEObjectImpl.eVirtualBitCount(this.eVirtualIndexBits(i));
        }
        return bit != 0 ? result : ~result;
    }

    protected Object[] eVirtualValues() {
        throw new UnsupportedOperationException();
    }

    protected void eSetVirtualValues(Object[] newValues) {
        throw new UnsupportedOperationException();
    }

    protected Object eVirtualValue(int index) {
        return this.eVirtualValues()[index];
    }

    protected Object eSetVirtualValue(int index, Object value) {
        Object[] values = this.eVirtualValues();
        Object oldValue = values[index];
        values[index] = value;
        return oldValue;
    }

    protected int eComputeVirtualValuesCapacity(int minimumCapacity) {
        return minimumCapacity + (minimumCapacity >> 3) + 2;
    }

    protected void eAddVirtualValue(int index, Object value) {
        Object[] values = this.eVirtualValues();
        if (values == null) {
            int newLength = this.eComputeVirtualValuesCapacity(1);
            values = new Object[newLength];
            values[0] = value;
            int i = 1;
            while (i < newLength) {
                values[i] = EVIRTUAL_NO_VALUE;
                ++i;
            }
            this.eSetVirtualValues(values);
        } else {
            int length = values.length;
            if (values[length - 1] == EVIRTUAL_NO_VALUE) {
                if (index + 1 < length) {
                    System.arraycopy(values, index, values, index + 1, length - index - 1);
                }
                values[index] = value;
            } else {
                int newLength = this.eComputeVirtualValuesCapacity(length + 1);
                Object[] newValues = new Object[newLength];
                int i = length;
                while (++i < newLength) {
                    newValues[i] = EVIRTUAL_NO_VALUE;
                }
                if (index > 0) {
                    System.arraycopy(values, 0, newValues, 0, index);
                }
                if (index < length) {
                    System.arraycopy(values, index, newValues, index + 1, length - index);
                }
                newValues[index] = value;
                this.eSetVirtualValues(newValues);
            }
        }
    }

    protected Object eRemoveVirtualValue(int index) {
        Object[] values = this.eVirtualValues();
        Object oldValue = values[index];
        int length = values.length - 1;
        if (index == 0 && (length == 0 || values[1] == EVIRTUAL_NO_VALUE)) {
            this.eSetVirtualValues(null);
        } else if (index < length) {
            System.arraycopy(values, index + 1, values, index, length - index);
        }
        return oldValue;
    }

    public Object eVirtualGet(int eDerivedStructuralFeatureID) {
        return this.eVirtualGet(eDerivedStructuralFeatureID, null);
    }

    public Object eVirtualGet(int eDerivedStructuralFeatureID, Object defaultValue) {
        int index = this.eVirtualIndex(eDerivedStructuralFeatureID, 2);
        return index < 0 ? defaultValue : this.eVirtualValue(index);
    }

    public boolean eVirtualIsSet(int eDerivedStructuralFeatureID) {
        return this.eVirtualIndex(eDerivedStructuralFeatureID, 3) >= 0;
    }

    public Object eVirtualSet(int eDerivedStructuralFeatureID, Object value) {
        int index = this.eVirtualIndex(eDerivedStructuralFeatureID, 0);
        if (index < 0) {
            this.eAddVirtualValue(~index, value);
            return EVIRTUAL_NO_VALUE;
        }
        return this.eSetVirtualValue(index, value);
    }

    public Object eVirtualUnset(int eDerivedStructuralFeatureID) {
        int index = this.eVirtualIndex(eDerivedStructuralFeatureID, 1);
        if (index < 0) {
            return EVIRTUAL_NO_VALUE;
        }
        return this.eRemoveVirtualValue(index);
    }

    @Override
    public Object eInvoke(EOperation eOperation, EList<?> arguments) throws InvocationTargetException {
        int operationID = this.eDerivedOperationID(eOperation);
        if (operationID >= 0) {
            return this.eInvoke(operationID, arguments);
        }
        throw new IllegalArgumentException("The operation '" + eOperation.getName() + "' is not a valid operation");
    }

    @Override
    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        EOperation eOperation = this.eClass().getEOperation(operationID);
        assert (eOperation != null) : "Invalid operationID: " + operationID;
        return this.eInvocationDelegate(eOperation).dynamicInvoke(this, arguments);
    }

    public Object eDynamicInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        return this.eDynamicInvoke(this.eClass().getEOperation(operationID), arguments);
    }

    protected Object eDynamicInvoke(EOperation eOperation, EList<?> arguments) throws InvocationTargetException {
        return this.eInvocationDelegate(eOperation).dynamicInvoke(this, arguments);
    }

    public String toString() {
        StringBuilder result = new StringBuilder(this.getClass().getName());
        result.append('@');
        result.append(Integer.toHexString(this.hashCode()));
        if (this.eIsProxy()) {
            result.append(" (eProxyURI: ");
            result.append(this.eProxyURI());
            if (this.eDynamicClass() != null) {
                result.append(" eClass: ");
                result.append(this.eDynamicClass());
            }
            result.append(')');
        } else if (this.eDynamicClass() != null) {
            result.append(" (eClass: ");
            result.append(this.eDynamicClass());
            result.append(')');
        }
        return result.toString();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static interface EPropertiesHolder
    extends EStructuralFeature.Internal.DynamicValueHolder {
        public EClass getEClass();

        public void setEClass(EClass var1);

        public URI getEProxyURI();

        public void setEProxyURI(URI var1);

        public Resource.Internal getEResource();

        public void setEResource(Resource.Internal var1);

        public EList<EObject> getEContents();

        public void setEContents(EList<EObject> var1);

        public EList<EObject> getECrossReferences();

        public void setECrossReferences(EList<EObject> var1);

        public boolean hasSettings();

        public void allocateSettings(int var1);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class EPropertiesHolderBaseImpl
    implements EPropertiesHolder {
        protected EClass eClass;
        protected Resource.Internal eResource;
        protected Object[] eSettings;
        protected static final Object[] NO_SETTINGS = new Object[0];

        protected EPropertiesHolderBaseImpl() {
        }

        @Override
        public EClass getEClass() {
            return this.eClass;
        }

        @Override
        public void setEClass(EClass eClass) {
            this.eClass = eClass;
        }

        @Override
        public URI getEProxyURI() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void setEProxyURI(URI eProxyURI) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Resource.Internal getEResource() {
            return this.eResource;
        }

        @Override
        public void setEResource(Resource.Internal eResource) {
            this.eResource = eResource;
        }

        @Override
        public EList<EObject> getEContents() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void setEContents(EList<EObject> eContents) {
            throw new UnsupportedOperationException();
        }

        @Override
        public EList<EObject> getECrossReferences() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void setECrossReferences(EList<EObject> eCrossReferences) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean hasSettings() {
            return this.eSettings != null;
        }

        @Override
        public void allocateSettings(int dynamicFeatureCount) {
            this.eSettings = dynamicFeatureCount == 0 ? NO_SETTINGS : new Object[dynamicFeatureCount];
        }

        @Override
        public Object dynamicGet(int dynamicFeatureID) {
            return this.eSettings[dynamicFeatureID];
        }

        @Override
        public void dynamicSet(int dynamicFeatureID, Object value) {
            this.eSettings[dynamicFeatureID] = value;
        }

        @Override
        public void dynamicUnset(int dynamicFeatureID) {
            this.eSettings[dynamicFeatureID] = null;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class EPropertiesHolderImpl
    extends EPropertiesHolderBaseImpl {
        protected URI eProxyURI;
        protected EList<EObject> eContents;
        protected EList<EObject> eCrossReferences;

        protected EPropertiesHolderImpl() {
        }

        @Override
        public URI getEProxyURI() {
            return this.eProxyURI;
        }

        @Override
        public void setEProxyURI(URI eProxyURI) {
            this.eProxyURI = eProxyURI;
        }

        @Override
        public EList<EObject> getEContents() {
            return this.eContents;
        }

        @Override
        public void setEContents(EList<EObject> eContents) {
            this.eContents = eContents;
        }

        @Override
        public EList<EObject> getECrossReferences() {
            return this.eCrossReferences;
        }

        @Override
        public void setECrossReferences(EList<EObject> eCrossReferences) {
            this.eCrossReferences = eCrossReferences;
        }
    }
}

