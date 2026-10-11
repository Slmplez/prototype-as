/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  gautosar.ggenericstructure.ginfrastructure.GAUTOSAR
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature$Setting
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreEMap
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar3x.genericstructure.infrastructure.autosar.impl;

import autosar3x.genericstructure.commonpatterns.admindata.AdminData;
import autosar3x.genericstructure.commonpatterns.primitivetypes.BooleanContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.FloatContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.IntegerContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.StringContainer;
import autosar3x.genericstructure.infrastructure.autosar.ARPackage;
import autosar3x.genericstructure.infrastructure.autosar.AUTOSAR;
import autosar3x.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar3x.genericstructure.infrastructure.autosar.impl.AUTOSARAllExtensionsMapEntryImpl;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.util.Autosar3xFactory;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AUTOSARImpl
extends ARObjectImpl
implements AUTOSAR {
    protected FeatureMap mixed;
    protected AdminData adminData;
    protected EList<ARPackage> topLevelPackages;
    protected EMap<String, String> xSISchemaLocation;
    protected EList<EObject> containedExtensions;
    protected Map<String, Object> wrappedExtensions;
    protected EMap<String, EObject> allExtensions;

    protected AUTOSARImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AutosarPackage.Literals.AUTOSAR;
    }

    public EList<GARPackage> gGetArPackages() {
        EList<ARPackage> untypedList = this.getTopLevelPackages();
        return untypedList;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 5);
        }
        return this.mixed;
    }

    @Override
    public void unsetMixed() {
        if (this.mixed != null) {
            ((InternalEList.Unsettable)this.mixed).unset();
        }
    }

    @Override
    public boolean isSetMixed() {
        return this.mixed != null && ((InternalEList.Unsettable)this.mixed).isSet();
    }

    @Override
    public AdminData getAdminData() {
        return this.adminData;
    }

    public NotificationChain basicSetAdminData(AdminData newAdminData, NotificationChain msgs) {
        AdminData oldAdminData = this.adminData;
        this.adminData = newAdminData;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldAdminData, (Object)newAdminData);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAdminData(AdminData newAdminData) {
        if (newAdminData != this.adminData) {
            NotificationChain msgs = null;
            if (this.adminData != null) {
                msgs = ((InternalEObject)this.adminData).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newAdminData != null) {
                msgs = ((InternalEObject)newAdminData).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetAdminData(newAdminData, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newAdminData, (Object)newAdminData));
        }
    }

    @Override
    public EList<ARPackage> getTopLevelPackages() {
        if (this.topLevelPackages == null) {
            this.topLevelPackages = new EObjectContainmentEList(ARPackage.class, (InternalEObject)this, 7);
        }
        return this.topLevelPackages;
    }

    @Override
    public EMap<String, String> getXSISchemaLocation() {
        if (this.xSISchemaLocation == null) {
            this.xSISchemaLocation = new EcoreEMap(EcorePackage.Literals.ESTRING_TO_STRING_MAP_ENTRY, EStringToStringMapEntryImpl.class, (InternalEObject)this, 8);
        }
        return this.xSISchemaLocation;
    }

    public EMap<String, EObject> getAllExtensions() {
        if (this.allExtensions == null) {
            this.allExtensions = new AllExtensionsEMap(AutosarPackage.Literals.AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY, AUTOSARAllExtensionsMapEntryImpl.class, (InternalEObject)this, 9);
        }
        return this.allExtensions;
    }

    public EList<EObject> getContainedExtensions() {
        if (this.containedExtensions == null) {
            this.containedExtensions = new EObjectContainmentEList(EObject.class, (InternalEObject)this, 10);
        }
        return this.containedExtensions;
    }

    @Override
    public Map<String, Object> getExtensions() {
        if (this.wrappedExtensions == null) {
            this.wrappedExtensions = new WrappedExtensionsMap();
        }
        return this.wrappedExtensions;
    }

    public FeatureMap gGetMixed() {
        return this.getMixed();
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return this.basicSetAdminData(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getTopLevelPackages()).basicRemove((Object)otherEnd, msgs);
            }
            case 8: {
                return ((InternalEList)this.getXSISchemaLocation()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getAllExtensions()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return ((InternalEList)this.getContainedExtensions()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetArPackages();
            }
            case 5: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 6: {
                return this.getAdminData();
            }
            case 7: {
                return this.getTopLevelPackages();
            }
            case 8: {
                if (coreType) {
                    return this.getXSISchemaLocation();
                }
                return this.getXSISchemaLocation().map();
            }
            case 9: {
                if (coreType) {
                    return this.getAllExtensions();
                }
                return this.getAllExtensions().map();
            }
            case 10: {
                return this.getContainedExtensions();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gGetArPackages().clear();
                this.gGetArPackages().addAll((Collection)newValue);
                return;
            }
            case 5: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 6: {
                this.setAdminData((AdminData)newValue);
                return;
            }
            case 7: {
                this.getTopLevelPackages().clear();
                this.getTopLevelPackages().addAll((Collection)newValue);
                return;
            }
            case 8: {
                ((EStructuralFeature.Setting)this.getXSISchemaLocation()).set(newValue);
                return;
            }
            case 9: {
                ((EStructuralFeature.Setting)this.getAllExtensions()).set(newValue);
                return;
            }
            case 10: {
                this.getContainedExtensions().clear();
                this.getContainedExtensions().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gGetArPackages().clear();
                return;
            }
            case 5: {
                this.unsetMixed();
                return;
            }
            case 6: {
                this.setAdminData(null);
                return;
            }
            case 7: {
                this.getTopLevelPackages().clear();
                return;
            }
            case 8: {
                this.getXSISchemaLocation().clear();
                return;
            }
            case 9: {
                this.getAllExtensions().clear();
                return;
            }
            case 10: {
                this.getContainedExtensions().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return !this.gGetArPackages().isEmpty();
            }
            case 5: {
                return this.isSetMixed();
            }
            case 6: {
                return this.adminData != null;
            }
            case 7: {
                return this.topLevelPackages != null && !this.topLevelPackages.isEmpty();
            }
            case 8: {
                return this.xSISchemaLocation != null && !this.xSISchemaLocation.isEmpty();
            }
            case 9: {
                return !this.getAllExtensions().isEmpty();
            }
            case 10: {
                return this.containedExtensions != null && !this.containedExtensions.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GAUTOSAR.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 0;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GAUTOSAR.class) {
            switch (baseFeatureID) {
                case 0: {
                    return 4;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(')');
        return result.toString();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class AllExtensionsEMap
    extends EcoreEMap<String, EObject> {
        private static final long serialVersionUID = 1L;

        public AllExtensionsEMap(EClass entryEClass, Class<?> entryClass, InternalEObject owner, int featureID) {
            super(entryEClass, entryClass, owner, featureID);
        }

        private void addToContainedExtensionsIfNeeded(EObject value) {
            if (value.eResource() == null || value.eResource() == AUTOSARImpl.this.eResource()) {
                AUTOSARImpl.this.getContainedExtensions().add((Object)value);
            }
        }

        public EObject put(String key, EObject value) {
            EObject oldValue = (EObject)super.put((Object)key, (Object)value);
            if (oldValue != null) {
                AUTOSARImpl.this.getContainedExtensions().remove((Object)oldValue);
            }
            if (value != null) {
                this.addToContainedExtensionsIfNeeded(value);
            }
            return oldValue;
        }

        public Map.Entry<String, EObject> set(int index, Map.Entry<String, EObject> object) {
            EObject value;
            EObject oldValue;
            Map.Entry oldEntry = super.set(index, object);
            if (oldEntry != null && (oldValue = (EObject)oldEntry.getValue()) != null) {
                AUTOSARImpl.this.getContainedExtensions().remove(oldEntry.getValue());
            }
            if (object != null && (value = object.getValue()) != null) {
                this.addToContainedExtensionsIfNeeded(value);
            }
            return oldEntry;
        }

        public boolean add(Map.Entry<String, EObject> object) {
            EObject value;
            boolean added = super.add(object);
            if (added && object != null && (value = object.getValue()) != null) {
                this.addToContainedExtensionsIfNeeded(value);
            }
            return added;
        }

        public void add(int index, Map.Entry<String, EObject> object) {
            EObject value;
            super.add(index, object);
            if (object != null && (value = object.getValue()) != null) {
                this.addToContainedExtensionsIfNeeded(value);
            }
        }

        public boolean addAll(Collection<? extends Map.Entry<String, EObject>> collection) {
            boolean added = super.addAll(collection);
            if (added && collection != null) {
                for (Map.Entry<String, EObject> entry : collection) {
                    EObject value = entry.getValue();
                    if (value == null) continue;
                    this.addToContainedExtensionsIfNeeded(value);
                }
            }
            return added;
        }

        public boolean addAll(int index, Collection<? extends Map.Entry<String, EObject>> collection) {
            boolean added = super.addAll(index, collection);
            if (added && collection != null) {
                for (Map.Entry<String, EObject> entry : collection) {
                    EObject value = entry.getValue();
                    if (value == null) continue;
                    this.addToContainedExtensionsIfNeeded(value);
                }
            }
            return added;
        }

        public boolean remove(Object object) {
            boolean removed = super.remove(object);
            if (removed && object != null) {
                AUTOSARImpl.this.getContainedExtensions().remove(object);
            }
            return removed;
        }

        public boolean removeAll(Collection<?> collection) {
            boolean removed = super.removeAll(collection);
            if (removed && collection != null) {
                for (Object object : collection) {
                    if (!(object instanceof EObject)) continue;
                    this.addToContainedExtensionsIfNeeded((EObject)object);
                }
            }
            return removed;
        }

        public Map.Entry<String, EObject> remove(int index) {
            EObject oldValue;
            Map.Entry oldEntry = super.remove(index);
            if (oldEntry != null && (oldValue = (EObject)oldEntry.getValue()) != null) {
                AUTOSARImpl.this.getContainedExtensions().remove((Object)oldValue);
            }
            return oldEntry;
        }

        public boolean retainAll(Collection<?> collection) {
            boolean retained = super.retainAll(collection);
            if (retained && collection != null) {
                ArrayList<EObject> eCollection = new ArrayList<EObject>();
                for (Object object : collection) {
                    if (!(object instanceof EObject)) continue;
                    eCollection.add((EObject)object);
                }
                AUTOSARImpl.this.getContainedExtensions().retainAll(eCollection);
            }
            return retained;
        }

        public void clear() {
            super.clear();
            AUTOSARImpl.this.getContainedExtensions().clear();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class WrappedExtensionsMap
    implements Map<String, Object> {
        private WrappedExtensionsMap() {
        }

        @Override
        public void clear() {
            AUTOSARImpl.this.getAllExtensions().clear();
        }

        @Override
        public boolean containsKey(Object key) {
            return AUTOSARImpl.this.getAllExtensions().containsKey(key);
        }

        @Override
        public boolean containsValue(Object value) {
            if (value == null) {
                return false;
            }
            if (value instanceof EObject) {
                return AUTOSARImpl.this.getAllExtensions().containsValue(value);
            }
            for (EObject eObject : AUTOSARImpl.this.getAllExtensions().values()) {
                if (!value.equals(this.unwrapValue(eObject))) continue;
                return true;
            }
            return false;
        }

        @Override
        public Set<Map.Entry<String, Object>> entrySet() {
            EntrySet entrySet = new EntrySet();
            for (Map.Entry wrappedEntry : AUTOSARImpl.this.getAllExtensions().entrySet()) {
                entrySet.add(new AbstractMap.SimpleEntry<String, Object>((String)wrappedEntry.getKey(), this.unwrapValue((EObject)wrappedEntry.getValue())));
            }
            return entrySet;
        }

        @Override
        public Object get(Object key) {
            return this.unwrapValue((EObject)AUTOSARImpl.this.getAllExtensions().get(key));
        }

        @Override
        public boolean isEmpty() {
            return AUTOSARImpl.this.getAllExtensions().isEmpty();
        }

        @Override
        public Set<String> keySet() {
            return AUTOSARImpl.this.getAllExtensions().keySet();
        }

        @Override
        public Object put(String key, Object value) {
            return AUTOSARImpl.this.getAllExtensions().put((Object)key, (Object)this.wrapValue(value));
        }

        @Override
        public void putAll(Map<? extends String, ? extends Object> map) {
            if (map.size() == 0) {
                return;
            }
            for (Map.Entry<? extends String, ? extends Object> entry : map.entrySet()) {
                this.put(entry.getKey(), entry.getValue());
            }
        }

        @Override
        public Object remove(Object key) {
            return AUTOSARImpl.this.getAllExtensions().removeKey(key);
        }

        @Override
        public int size() {
            return AUTOSARImpl.this.getAllExtensions().size();
        }

        @Override
        public Collection<Object> values() {
            Values values = new Values();
            for (EObject wrappedValue : AUTOSARImpl.this.getAllExtensions().values()) {
                values.add(this.unwrapValue(wrappedValue));
            }
            return values;
        }

        private EObject wrapValue(Object object) {
            if (object instanceof String) {
                StringContainer stringContainer = Autosar3xFactory.eINSTANCE.createStringContainer();
                stringContainer.setValue((String)object);
                return stringContainer;
            }
            if (object instanceof Integer) {
                IntegerContainer integerContainer = Autosar3xFactory.eINSTANCE.createIntegerContainer();
                integerContainer.setValue((Integer)object);
                return integerContainer;
            }
            if (object instanceof Double) {
                FloatContainer doubleContainer = Autosar3xFactory.eINSTANCE.createFloatContainer();
                doubleContainer.setValue((Double)object);
                return doubleContainer;
            }
            if (object instanceof Boolean) {
                BooleanContainer booleanContainer = Autosar3xFactory.eINSTANCE.createBooleanContainer();
                booleanContainer.setValue((Boolean)object);
                return booleanContainer;
            }
            if (object instanceof EObject) {
                return (EObject)object;
            }
            throw new IllegalArgumentException("Only objects being instances of EObject, java.lang.String, java.lang.Integer, java.lang.Double, or java.lang.Boolean are supported.");
        }

        private Object unwrapValue(EObject eObject) {
            if (eObject instanceof StringContainer) {
                return ((StringContainer)eObject).getValue();
            }
            if (eObject instanceof IntegerContainer) {
                return ((IntegerContainer)eObject).getValue();
            }
            if (eObject instanceof FloatContainer) {
                return ((FloatContainer)eObject).getValue();
            }
            if (eObject instanceof BooleanContainer) {
                return ((BooleanContainer)eObject).getValue();
            }
            return eObject;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private class EntrySet
        extends HashSet<Map.Entry<String, Object>> {
            private static final long serialVersionUID = 1L;

            private EntrySet() {
            }

            @Override
            public boolean contains(Object o) {
                if (!(o instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry)o;
                if (!(entry.getKey() instanceof String)) {
                    return false;
                }
                Object candidate = WrappedExtensionsMap.this.unwrapValue((EObject)AUTOSARImpl.this.getAllExtensions().get(entry.getKey()));
                return candidate != null && candidate.equals(entry.getValue());
            }

            @Override
            public boolean remove(Object o) {
                if (!(o instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry)o;
                if (!(entry.getKey() instanceof String)) {
                    return false;
                }
                return AUTOSARImpl.this.getAllExtensions().remove(o);
            }

            @Override
            public void clear() {
                WrappedExtensionsMap.this.clear();
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private class Values
        extends ArrayList<Object> {
            private static final long serialVersionUID = 1L;

            private Values() {
            }

            @Override
            public int size() {
                return WrappedExtensionsMap.this.size();
            }

            @Override
            public boolean contains(Object o) {
                return WrappedExtensionsMap.this.containsValue(o);
            }

            @Override
            public void clear() {
                WrappedExtensionsMap.this.clear();
            }
        }
    }
}

