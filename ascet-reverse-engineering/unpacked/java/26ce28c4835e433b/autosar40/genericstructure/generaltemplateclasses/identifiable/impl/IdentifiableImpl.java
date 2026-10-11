/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  org.artop.aal.common.internal.UUID
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature$Setting
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreEMap
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable.impl;

import autosar40.genericstructure.generaltemplateclasses.admindata.AdminData;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableAllExtensionsMapEntryImpl;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.MultilanguageReferrableImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.BooleanContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.FloatContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.IntegerContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.StringContainer;
import autosar40.util.Autosar40Factory;
import autosar40.util.Autosar40ResourceImpl;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.artop.aal.common.internal.UUID;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IdentifiableImpl
extends MultilanguageReferrableImpl
implements Identifiable {
    protected static final String GUUID_EDEFAULT = null;
    protected static final String GCATEGORY_EDEFAULT = null;
    protected static final String CATEGORY_EDEFAULT = "";
    protected DocumentationBlock introduction;
    protected EList<Annotation> annotations;
    protected static final String UUID_EDEFAULT = "";
    protected EList<EObject> containedExtensions;
    protected Map<String, Object> wrappedExtensions;
    protected EMap<String, EObject> allExtensions;

    protected IdentifiableImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return IdentifiablePackage.Literals.IDENTIFIABLE;
    }

    public String gGetUuid() {
        String tgtFeatureValue = this.getUuid();
        return tgtFeatureValue;
    }

    public void gSetUuid(String newGUuid) {
        this.setUuid(newGUuid);
    }

    public void gUnsetUuid() {
        this.unsetUuid();
    }

    public boolean gIsSetUuid() {
        return this.isSetUuid();
    }

    public String gGetCategory() {
        String tgtFeatureValue = this.getCategory();
        return tgtFeatureValue;
    }

    public void gSetCategory(String newGCategory) {
        this.setCategory(newGCategory);
    }

    public void gUnsetCategory() {
        this.unsetCategory();
    }

    public boolean gIsSetCategory() {
        return this.isSetCategory();
    }

    public GMultiLanguageOverviewParagraph gGetDesc() {
        return this.getDesc();
    }

    public void gSetDesc(GMultiLanguageOverviewParagraph newGDesc) {
        this.setDesc((MultiLanguageOverviewParagraph)newGDesc);
    }

    @Override
    public MultiLanguageOverviewParagraph getDesc() {
        return (MultiLanguageOverviewParagraph)this.getField(4096);
    }

    public NotificationChain basicSetDesc(MultiLanguageOverviewParagraph newDesc, NotificationChain msgs) {
        MultiLanguageOverviewParagraph oldDesc = (MultiLanguageOverviewParagraph)this.setField(4096, newDesc);
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldDesc, (Object)newDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDesc(MultiLanguageOverviewParagraph newDesc) {
        MultiLanguageOverviewParagraph desc = this.getDesc();
        if (newDesc != desc) {
            NotificationChain msgs = null;
            if (desc != null) {
                msgs = ((InternalEObject)desc).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newDesc != null) {
                msgs = ((InternalEObject)newDesc).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetDesc(newDesc, msgs)) != null) {
                msgs.dispatch();
            } else if (this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newDesc, (Object)newDesc));
            }
        }
    }

    @Override
    public String getCategory() {
        String category = (String)this.getField(2048);
        return category == null ? "" : category;
    }

    @Override
    public void setCategory(String newCategory) {
        String oldCategory = (String)this.setField(2048, newCategory);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldCategory, (Object)newCategory));
        }
    }

    @Override
    public void unsetCategory() {
        this.setField(2048, null);
    }

    @Override
    public boolean isSetCategory() {
        return this.hasField(2048);
    }

    @Override
    public AdminData getAdminData() {
        return (AdminData)this.getField(1024);
    }

    public NotificationChain basicSetAdminData(AdminData newAdminData, NotificationChain msgs) {
        AdminData oldAdminData = (AdminData)this.setField(1024, newAdminData);
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldAdminData, (Object)newAdminData);
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
        AdminData adminData = this.getAdminData();
        if (newAdminData != adminData) {
            NotificationChain msgs = null;
            if (adminData != null) {
                msgs = ((InternalEObject)adminData).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newAdminData != null) {
                msgs = ((InternalEObject)newAdminData).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetAdminData(newAdminData, msgs)) != null) {
                msgs.dispatch();
            } else if (this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newAdminData, (Object)newAdminData));
            }
        }
    }

    @Override
    public DocumentationBlock getIntroduction() {
        return this.introduction;
    }

    public NotificationChain basicSetIntroduction(DocumentationBlock newIntroduction, NotificationChain msgs) {
        DocumentationBlock oldIntroduction = this.introduction;
        this.introduction = newIntroduction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldIntroduction, (Object)newIntroduction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setIntroduction(DocumentationBlock newIntroduction) {
        if (newIntroduction != this.introduction) {
            NotificationChain msgs = null;
            if (this.introduction != null) {
                msgs = ((InternalEObject)this.introduction).eInverseRemove((InternalEObject)this, -14, null, msgs);
            }
            if (newIntroduction != null) {
                msgs = ((InternalEObject)newIntroduction).eInverseAdd((InternalEObject)this, -14, null, msgs);
            }
            if ((msgs = this.basicSetIntroduction(newIntroduction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newIntroduction, (Object)newIntroduction));
        }
    }

    @Override
    public EList<Annotation> getAnnotations() {
        if (this.annotations == null) {
            this.annotations = new EObjectContainmentEList(Annotation.class, (InternalEObject)this, 14);
        }
        return this.annotations;
    }

    @Override
    public String getUuid() {
        Object value = this.getField(16384);
        return value == null ? "" : new UUID(value).toString();
    }

    @Override
    public void setUuid(String newUuid) {
        UUID newUuidObj = new UUID((Object)newUuid);
        UUID oldUuidObj = new UUID(this.setField(16384, newUuidObj.getData()));
        if (!oldUuidObj.equals((Object)newUuidObj)) {
            Resource resource = this.eResource();
            if (resource instanceof Autosar40ResourceImpl) {
                Autosar40ResourceImpl autosarResource = (Autosar40ResourceImpl)resource;
                autosarResource.incrUuidUseCount(newUuidObj);
                autosarResource.decrUuidUseCount(oldUuidObj);
            }
            if (this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldUuidObj.toString(), (Object)newUuid));
            }
        }
    }

    @Override
    public void unsetUuid() {
        this.setField(16384, null);
    }

    @Override
    public boolean isSetUuid() {
        return this.hasField(16384);
    }

    public EMap<String, EObject> getAllExtensions() {
        if (this.allExtensions == null) {
            this.allExtensions = new AllExtensionsEMap(IdentifiablePackage.Literals.IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY, IdentifiableAllExtensionsMapEntryImpl.class, (InternalEObject)this, 16);
        }
        return this.allExtensions;
    }

    public EList<EObject> getContainedExtensions() {
        if (this.containedExtensions == null) {
            this.containedExtensions = new EObjectContainmentEList(EObject.class, (InternalEObject)this, 17);
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

    public Map<String, Object> gGetExtensions() {
        return this.getExtensions();
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 10: {
                return this.basicSetDesc(null, msgs);
            }
            case 12: {
                return this.basicSetAdminData(null, msgs);
            }
            case 13: {
                return this.basicSetIntroduction(null, msgs);
            }
            case 14: {
                return ((InternalEList)this.getAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
            case 16: {
                return ((InternalEList)this.getAllExtensions()).basicRemove((Object)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getContainedExtensions()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.gGetUuid();
            }
            case 8: {
                return this.gGetCategory();
            }
            case 9: {
                return this.gGetDesc();
            }
            case 10: {
                return this.getDesc();
            }
            case 11: {
                return this.getCategory();
            }
            case 12: {
                return this.getAdminData();
            }
            case 13: {
                return this.getIntroduction();
            }
            case 14: {
                return this.getAnnotations();
            }
            case 15: {
                return this.getUuid();
            }
            case 16: {
                if (coreType) {
                    return this.getAllExtensions();
                }
                return this.getAllExtensions().map();
            }
            case 17: {
                return this.getContainedExtensions();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.gSetUuid((String)newValue);
                return;
            }
            case 8: {
                this.gSetCategory((String)newValue);
                return;
            }
            case 9: {
                this.gSetDesc((GMultiLanguageOverviewParagraph)newValue);
                return;
            }
            case 10: {
                this.setDesc((MultiLanguageOverviewParagraph)newValue);
                return;
            }
            case 11: {
                this.setCategory((String)newValue);
                return;
            }
            case 12: {
                this.setAdminData((AdminData)newValue);
                return;
            }
            case 13: {
                this.setIntroduction((DocumentationBlock)newValue);
                return;
            }
            case 14: {
                this.getAnnotations().clear();
                this.getAnnotations().addAll((Collection)newValue);
                return;
            }
            case 15: {
                this.setUuid((String)newValue);
                return;
            }
            case 16: {
                ((EStructuralFeature.Setting)this.getAllExtensions()).set(newValue);
                return;
            }
            case 17: {
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
            case 7: {
                this.gUnsetUuid();
                return;
            }
            case 8: {
                this.gUnsetCategory();
                return;
            }
            case 9: {
                this.gSetDesc(null);
                return;
            }
            case 10: {
                this.setDesc(null);
                return;
            }
            case 11: {
                this.unsetCategory();
                return;
            }
            case 12: {
                this.setAdminData(null);
                return;
            }
            case 13: {
                this.setIntroduction(null);
                return;
            }
            case 14: {
                this.getAnnotations().clear();
                return;
            }
            case 15: {
                this.unsetUuid();
                return;
            }
            case 16: {
                this.getAllExtensions().clear();
                return;
            }
            case 17: {
                this.getContainedExtensions().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.gIsSetUuid();
            }
            case 8: {
                return this.gIsSetCategory();
            }
            case 9: {
                return this.gGetDesc() != null;
            }
            case 10: {
                return this.hasField(4096);
            }
            case 11: {
                return this.isSetCategory();
            }
            case 12: {
                return this.hasField(1024);
            }
            case 13: {
                return this.introduction != null;
            }
            case 14: {
                return this.annotations != null && !this.annotations.isEmpty();
            }
            case 15: {
                return this.isSetUuid();
            }
            case 16: {
                return !this.getAllExtensions().isEmpty();
            }
            case 17: {
                return this.containedExtensions != null && !this.containedExtensions.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GIdentifiable.class) {
            switch (derivedFeatureID) {
                case 7: {
                    return 3;
                }
                case 8: {
                    return 4;
                }
                case 9: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GIdentifiable.class) {
            switch (baseFeatureID) {
                case 3: {
                    return 7;
                }
                case 4: {
                    return 8;
                }
                case 5: {
                    return 9;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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
            if (value.eResource() == null || value.eResource() == IdentifiableImpl.this.eResource()) {
                IdentifiableImpl.this.getContainedExtensions().add((Object)value);
            }
        }

        public EObject put(String key, EObject value) {
            EObject oldValue = (EObject)super.put((Object)key, (Object)value);
            if (oldValue != null) {
                IdentifiableImpl.this.getContainedExtensions().remove((Object)oldValue);
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
                IdentifiableImpl.this.getContainedExtensions().remove(oldEntry.getValue());
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
                IdentifiableImpl.this.getContainedExtensions().remove(object);
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
                IdentifiableImpl.this.getContainedExtensions().remove((Object)oldValue);
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
                IdentifiableImpl.this.getContainedExtensions().retainAll(eCollection);
            }
            return retained;
        }

        public void clear() {
            super.clear();
            IdentifiableImpl.this.getContainedExtensions().clear();
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
            IdentifiableImpl.this.getAllExtensions().clear();
        }

        @Override
        public boolean containsKey(Object key) {
            return IdentifiableImpl.this.getAllExtensions().containsKey(key);
        }

        @Override
        public boolean containsValue(Object value) {
            if (value == null) {
                return false;
            }
            if (value instanceof EObject) {
                return IdentifiableImpl.this.getAllExtensions().containsValue(value);
            }
            for (EObject eObject : IdentifiableImpl.this.getAllExtensions().values()) {
                if (!value.equals(this.unwrapValue(eObject))) continue;
                return true;
            }
            return false;
        }

        @Override
        public Set<Map.Entry<String, Object>> entrySet() {
            EntrySet entrySet = new EntrySet();
            for (Map.Entry wrappedEntry : IdentifiableImpl.this.getAllExtensions().entrySet()) {
                entrySet.add(new AbstractMap.SimpleEntry<String, Object>((String)wrappedEntry.getKey(), this.unwrapValue((EObject)wrappedEntry.getValue())));
            }
            return entrySet;
        }

        @Override
        public Object get(Object key) {
            return this.unwrapValue((EObject)IdentifiableImpl.this.getAllExtensions().get(key));
        }

        @Override
        public boolean isEmpty() {
            return IdentifiableImpl.this.getAllExtensions().isEmpty();
        }

        @Override
        public Set<String> keySet() {
            return IdentifiableImpl.this.getAllExtensions().keySet();
        }

        @Override
        public Object put(String key, Object value) {
            return IdentifiableImpl.this.getAllExtensions().put((Object)key, (Object)this.wrapValue(value));
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
            return IdentifiableImpl.this.getAllExtensions().removeKey(key);
        }

        @Override
        public int size() {
            return IdentifiableImpl.this.getAllExtensions().size();
        }

        @Override
        public Collection<Object> values() {
            Values values = new Values();
            for (EObject wrappedValue : IdentifiableImpl.this.getAllExtensions().values()) {
                values.add(this.unwrapValue(wrappedValue));
            }
            return values;
        }

        private EObject wrapValue(Object object) {
            if (object instanceof String) {
                StringContainer stringContainer = Autosar40Factory.eINSTANCE.createStringContainer();
                stringContainer.setValue((String)object);
                return stringContainer;
            }
            if (object instanceof Integer) {
                IntegerContainer integerContainer = Autosar40Factory.eINSTANCE.createIntegerContainer();
                integerContainer.setValue((Integer)object);
                return integerContainer;
            }
            if (object instanceof Double) {
                FloatContainer doubleContainer = Autosar40Factory.eINSTANCE.createFloatContainer();
                doubleContainer.setValue((Double)object);
                return doubleContainer;
            }
            if (object instanceof Boolean) {
                BooleanContainer booleanContainer = Autosar40Factory.eINSTANCE.createBooleanContainer();
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
                Object candidate = WrappedExtensionsMap.this.unwrapValue((EObject)IdentifiableImpl.this.getAllExtensions().get(entry.getKey()));
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
                return IdentifiableImpl.this.getAllExtensions().remove(o);
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

