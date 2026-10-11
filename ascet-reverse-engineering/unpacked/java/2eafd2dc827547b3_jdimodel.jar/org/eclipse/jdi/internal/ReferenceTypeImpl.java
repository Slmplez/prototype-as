/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.ClassLoaderReference
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.ClassNotPreparedException
 *  com.sun.jdi.ClassObjectReference
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Field
 *  com.sun.jdi.InternalException
 *  com.sun.jdi.NativeMethodException
 *  com.sun.jdi.ObjectCollectedException
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.VMDisconnectedException
 *  com.sun.jdi.Value
 */
package org.eclipse.jdi.internal;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ClassLoaderReference;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.ClassNotPreparedException;
import com.sun.jdi.ClassObjectReference;
import com.sun.jdi.ClassType;
import com.sun.jdi.InternalException;
import com.sun.jdi.NativeMethodException;
import com.sun.jdi.ObjectCollectedException;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.Value;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdi.hcr.ReferenceType;
import org.eclipse.jdi.internal.AccessibleImpl;
import org.eclipse.jdi.internal.ArrayTypeImpl;
import org.eclipse.jdi.internal.ClassLoaderReferenceImpl;
import org.eclipse.jdi.internal.ClassObjectReferenceImpl;
import org.eclipse.jdi.internal.ClassTypeImpl;
import org.eclipse.jdi.internal.FieldImpl;
import org.eclipse.jdi.internal.InterfaceTypeImpl;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.LocationImpl;
import org.eclipse.jdi.internal.MethodImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.SourceDebugExtensionParser;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpFieldID;
import org.eclipse.jdi.internal.jdwp.JdwpID;
import org.eclipse.jdi.internal.jdwp.JdwpMethodID;
import org.eclipse.jdi.internal.jdwp.JdwpReferenceTypeID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

public abstract class ReferenceTypeImpl
extends TypeImpl
implements com.sun.jdi.ReferenceType,
ReferenceType {
    public static final int JDWP_CLASS_STATUS_VERIFIED = 1;
    public static final int JDWP_CLASS_STATUS_PREPARED = 2;
    public static final int JDWP_CLASS_STATUS_INITIALIZED = 4;
    public static final int JDWP_CLASS_STATUS_ERROR = 8;
    private static String[] fgClassStatusStrings = null;
    private JdwpReferenceTypeID fReferenceTypeID;
    protected List fInterfaces = null;
    private List fMethods = null;
    private Hashtable fMethodTable = null;
    private List fFields = null;
    private List fAllMethods = null;
    private List fVisibleMethods = null;
    private List fAllFields = null;
    private List fVisibleFields = null;
    private List fAllInterfaces = null;
    private Map fStratumAllLineLocations = null;
    private String fSourceName = null;
    private int fModifierBits = -1;
    private ClassLoaderReferenceImpl fClassLoader = null;
    private ClassObjectReferenceImpl fClassObject = null;
    private String fGenericSignature;
    private boolean fGenericSignatureKnown;
    private boolean fGotClassFileVersion = false;
    private int fClassFileVersion;
    private boolean fIsHCREligible;
    private boolean fIsVersionKnown;
    private boolean fSourceDebugExtensionAvailable = true;
    private String fDefaultStratumId;
    private Map fStrata;
    private String fSmap;
    static /* synthetic */ Class class$0;

    protected ReferenceTypeImpl(String description, VirtualMachineImpl vmImpl, JdwpReferenceTypeID referenceTypeID) {
        super(description, vmImpl);
        this.fReferenceTypeID = referenceTypeID;
    }

    protected ReferenceTypeImpl(String description, VirtualMachineImpl vmImpl, JdwpReferenceTypeID referenceTypeID, String signature, String genericSignature) {
        super(description, vmImpl);
        this.fReferenceTypeID = referenceTypeID;
        this.setSignature(signature);
        this.setGenericSignature(genericSignature);
    }

    public abstract byte typeTag();

    public void flushStoredJdwpResults() {
        Iterator iter;
        if (this.fMethods != null) {
            iter = this.fMethods.iterator();
            while (iter.hasNext()) {
                MethodImpl method = (MethodImpl)iter.next();
                method.flushStoredJdwpResults();
            }
            this.fMethods = null;
            this.fMethodTable = null;
        }
        if (this.fFields != null) {
            iter = this.fFields.iterator();
            while (iter.hasNext()) {
                FieldImpl field = (FieldImpl)iter.next();
                field.flushStoredJdwpResults();
            }
            this.fFields = null;
        }
        this.fInterfaces = null;
        this.fAllMethods = null;
        this.fVisibleMethods = null;
        this.fAllFields = null;
        this.fVisibleFields = null;
        this.fAllInterfaces = null;
        this.fStratumAllLineLocations = null;
        this.fSourceName = null;
        this.fModifierBits = -1;
        this.fClassLoader = null;
        this.fClassObject = null;
        this.fGotClassFileVersion = false;
        this.fGenericSignature = null;
        this.fGenericSignatureKnown = false;
        this.fSourceDebugExtensionAvailable = true;
        this.fDefaultStratumId = null;
        this.fStrata = null;
        this.fSmap = null;
        this.fSignature = null;
        this.fSourceName = null;
    }

    public List allInterfaces() {
        ClassType superclass;
        if (this.fAllInterfaces != null) {
            return this.fAllInterfaces;
        }
        HashSet allInterfacesSet = new HashSet(this.interfaces());
        Iterator interfaces = this.interfaces().iterator();
        while (interfaces.hasNext()) {
            InterfaceTypeImpl inter = (InterfaceTypeImpl)interfaces.next();
            allInterfacesSet.addAll(inter.allInterfaces());
        }
        if (this instanceof ClassType && (superclass = ((ClassType)this).superclass()) != null) {
            allInterfacesSet.addAll(superclass.allInterfaces());
        }
        this.fAllInterfaces = new ArrayList(allInterfacesSet);
        return this.fAllInterfaces;
    }

    public JdwpReferenceTypeID getRefTypeID() {
        return this.fReferenceTypeID;
    }

    public int modifiers() {
        if (this.fModifierBits != -1) {
            return this.fModifierBits;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(515, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int n = this.fModifierBits = this.readInt("modifiers", AccessibleImpl.getModifierStrings(), replyData);
            return n;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return 0;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    private void addVisibleMethods(List inheritedMethods, Set nameAndSignatures, List resultMethods) {
        Iterator iter = inheritedMethods.iterator();
        while (iter.hasNext()) {
            MethodImpl inheritedMethod = (MethodImpl)iter.next();
            if (nameAndSignatures.contains(String.valueOf(inheritedMethod.name()) + inheritedMethod.signature())) continue;
            resultMethods.add(inheritedMethod);
        }
    }

    public List visibleMethods() {
        ClassType superclass;
        if (this.fVisibleMethods != null) {
            return this.fVisibleMethods;
        }
        HashSet<String> namesAndSignatures = new HashSet<String>();
        ArrayList<MethodImpl> visibleMethods = new ArrayList<MethodImpl>();
        Iterator iter = this.methods().iterator();
        while (iter.hasNext()) {
            MethodImpl method = (MethodImpl)iter.next();
            namesAndSignatures.add(String.valueOf(method.name()) + method.signature());
            visibleMethods.add(method);
        }
        Iterator interfaces = this.interfaces().iterator();
        while (interfaces.hasNext()) {
            InterfaceTypeImpl inter = (InterfaceTypeImpl)interfaces.next();
            this.addVisibleMethods(inter.visibleMethods(), namesAndSignatures, visibleMethods);
        }
        if (this instanceof ClassType && (superclass = ((ClassType)this).superclass()) != null) {
            this.addVisibleMethods(superclass.visibleMethods(), namesAndSignatures, visibleMethods);
        }
        this.fVisibleMethods = visibleMethods;
        return this.fVisibleMethods;
    }

    public List allMethods() {
        ClassType superclass;
        if (this.fAllMethods != null) {
            return this.fAllMethods;
        }
        HashSet resultSet = new HashSet();
        resultSet.addAll(this.methods());
        Iterator interfaces = this.interfaces().iterator();
        while (interfaces.hasNext()) {
            InterfaceTypeImpl inter = (InterfaceTypeImpl)interfaces.next();
            resultSet.addAll(inter.allMethods());
        }
        if (this instanceof ClassType && (superclass = ((ClassType)this).superclass()) != null) {
            resultSet.addAll(superclass.allMethods());
        }
        this.fAllMethods = new ArrayList(resultSet);
        return this.fAllMethods;
    }

    public List interfaces() {
        if (this.fInterfaces != null) {
            return this.fInterfaces;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(522, this);
            switch (replyPacket.errorCode()) {
                case 41: {
                    List list = Collections.EMPTY_LIST;
                    return list;
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ArrayList<InterfaceTypeImpl> elements = new ArrayList<InterfaceTypeImpl>();
            int nrOfElements = this.readInt("elements", replyData);
            int i = 0;
            while (i < nrOfElements) {
                InterfaceTypeImpl ref = InterfaceTypeImpl.read(this, replyData);
                if (ref != null) {
                    elements.add(ref);
                }
                ++i;
            }
            this.fInterfaces = elements;
            ArrayList<InterfaceTypeImpl> arrayList = elements;
            return arrayList;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    private void addVisibleFields(List newFields, Set names, List resultFields) {
        Iterator iter = newFields.iterator();
        while (iter.hasNext()) {
            FieldImpl field = (FieldImpl)iter.next();
            String name = field.name();
            if (names.contains(name)) continue;
            resultFields.add(field);
            names.add(name);
        }
    }

    public List visibleFields() {
        ClassType superclass;
        if (this.fVisibleFields != null) {
            return this.fVisibleFields;
        }
        HashSet fieldNames = new HashSet();
        ArrayList visibleFields = new ArrayList();
        this.addVisibleFields(this.fields(), fieldNames, visibleFields);
        Iterator interfaces = this.interfaces().iterator();
        while (interfaces.hasNext()) {
            InterfaceTypeImpl inter = (InterfaceTypeImpl)interfaces.next();
            this.addVisibleFields(inter.visibleFields(), fieldNames, visibleFields);
        }
        if (this instanceof ClassType && (superclass = ((ClassType)this).superclass()) != null) {
            this.addVisibleFields(superclass.visibleFields(), fieldNames, visibleFields);
        }
        this.fVisibleFields = visibleFields;
        return this.fVisibleFields;
    }

    public List allFields() {
        ClassType superclass;
        if (this.fAllFields != null) {
            return this.fAllFields;
        }
        HashSet resultSet = new HashSet();
        resultSet.addAll(this.fields());
        Iterator interfaces = this.interfaces().iterator();
        while (interfaces.hasNext()) {
            InterfaceTypeImpl inter = (InterfaceTypeImpl)interfaces.next();
            resultSet.addAll(inter.allFields());
        }
        if (this instanceof ClassType && (superclass = ((ClassType)this).superclass()) != null) {
            resultSet.addAll(superclass.allFields());
        }
        this.fAllFields = new ArrayList(resultSet);
        return this.fAllFields;
    }

    public ClassLoaderReference classLoader() {
        if (this.fClassLoader != null) {
            return this.fClassLoader;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(514, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ClassLoaderReferenceImpl classLoaderReferenceImpl = this.fClassLoader = ClassLoaderReferenceImpl.read(this, replyData);
            return classLoaderReferenceImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public ClassObjectReference classObject() {
        if (this.fClassObject != null) {
            return this.fClassObject;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(523, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ClassObjectReferenceImpl classObjectReferenceImpl = this.fClassObject = ClassObjectReferenceImpl.read(this, replyData);
            return classObjectReferenceImpl;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    protected int status() {
        this.initJdwpRequest();
        try {
            int status;
            JdwpReplyPacket replyPacket = this.requestVM(521, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int n = status = this.readInt("status", ReferenceTypeImpl.classStatusStrings(), replyData);
            return n;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return 0;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public boolean failedToInitialize() {
        return (this.status() & 8) != 0;
    }

    public boolean isInitialized() {
        return (this.status() & 4) != 0;
    }

    public boolean isPrepared() {
        return (this.status() & 2) != 0;
    }

    public boolean isVerified() {
        return (this.status() & 1) != 0;
    }

    public com.sun.jdi.Field fieldByName(String name) {
        Iterator iter = this.visibleFields().iterator();
        while (iter.hasNext()) {
            FieldImpl field = (FieldImpl)iter.next();
            if (!field.name().equals(name)) continue;
            return field;
        }
        return null;
    }

    public List fields() {
        if (this.fFields != null) {
            return this.fFields;
        }
        this.initJdwpRequest();
        try {
            boolean withGenericSignature = this.virtualMachineImpl().isJdwpVersionGreaterOrEqual(1, 5);
            int jdwpCommand = withGenericSignature ? 526 : 516;
            JdwpReplyPacket replyPacket = this.requestVM(jdwpCommand, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ArrayList<FieldImpl> elements = new ArrayList<FieldImpl>();
            int nrOfElements = this.readInt("elements", replyData);
            int i = 0;
            while (i < nrOfElements) {
                FieldImpl elt = FieldImpl.readWithNameSignatureModifiers(this, this, withGenericSignature, replyData);
                if (elt != null) {
                    elements.add(elt);
                }
                ++i;
            }
            this.fFields = elements;
            List list = this.fFields;
            return list;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public FieldImpl findField(JdwpFieldID fieldID) {
        Iterator iter = this.fields().iterator();
        while (iter.hasNext()) {
            FieldImpl field = (FieldImpl)iter.next();
            if (!field.getFieldID().equals(fieldID)) continue;
            return field;
        }
        return null;
    }

    public MethodImpl findMethod(JdwpMethodID methodID) {
        if (methodID.value() == 0L) {
            return new MethodImpl(this.virtualMachineImpl(), this, methodID, JDIMessages.ReferenceTypeImpl_Obsolete_method_1, "", null, -1);
        }
        if (this.fMethodTable == null) {
            this.fMethodTable = new Hashtable();
            Iterator iter = this.methods().iterator();
            while (iter.hasNext()) {
                MethodImpl method = (MethodImpl)iter.next();
                this.fMethodTable.put(method.getMethodID(), method);
            }
        }
        return (MethodImpl)this.fMethodTable.get(methodID);
    }

    public Value getValue(com.sun.jdi.Field field) {
        ArrayList<com.sun.jdi.Field> list = new ArrayList<com.sun.jdi.Field>(1);
        list.add(field);
        return (ValueImpl)this.getValues(list).get(field);
    }

    public Map getValues(List fields) {
        if (fields.isEmpty()) {
            return new HashMap();
        }
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            int fieldsSize = fields.size();
            this.write(this, outData);
            this.writeInt(fieldsSize, "size", outData);
            int i = 0;
            while (i < fieldsSize) {
                FieldImpl field = (FieldImpl)fields.get(i);
                this.checkVM(field);
                field.getFieldID().write(outData);
                ++i;
            }
            JdwpReplyPacket replyPacket = this.requestVM(518, outBytes);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            HashMap map = new HashMap();
            int nrOfElements = this.readInt("elements", replyData);
            if (nrOfElements != fieldsSize) {
                throw new InternalError(JDIMessages.ReferenceTypeImpl_Retrieved_a_different_number_of_values_from_the_VM_than_requested_3);
            }
            int i2 = 0;
            while (i2 < nrOfElements) {
                map.put(fields.get(i2), ValueImpl.readWithTag(this, replyData));
                ++i2;
            }
            HashMap hashMap = map;
            return hashMap;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public int hashCode() {
        return this.fReferenceTypeID.hashCode();
    }

    public boolean equals(Object object) {
        return object != null && object.getClass().equals(this.getClass()) && this.fReferenceTypeID.equals(((ReferenceTypeImpl)object).fReferenceTypeID) && this.virtualMachine().equals(((MirrorImpl)object).virtualMachine());
    }

    public int compareTo(Object object) {
        if (object == null || !object.getClass().equals(this.getClass())) {
            throw new ClassCastException(JDIMessages.ReferenceTypeImpl_Can__t_compare_reference_type_to_given_object_4);
        }
        return this.name().compareTo(((com.sun.jdi.ReferenceType)object).name());
    }

    public boolean isAbstract() {
        return (this.modifiers() & 0x400) != 0;
    }

    public boolean isFinal() {
        return (this.modifiers() & 0x10) != 0;
    }

    public boolean isStatic() {
        return (this.modifiers() & 8) != 0;
    }

    public List locationsOfLine(int line) throws AbsentInformationException {
        return this.locationsOfLine(this.virtualMachine().getDefaultStratum(), null, line);
    }

    public List methods() {
        if (this.fMethods != null) {
            return this.fMethods;
        }
        this.initJdwpRequest();
        try {
            boolean withGenericSignature = this.virtualMachineImpl().isJdwpVersionGreaterOrEqual(1, 5);
            int jdwpCommand = withGenericSignature ? 527 : 517;
            JdwpReplyPacket replyPacket = this.requestVM(jdwpCommand, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            ArrayList<MethodImpl> elements = new ArrayList<MethodImpl>();
            int nrOfElements = this.readInt("elements", replyData);
            int i = 0;
            while (i < nrOfElements) {
                MethodImpl elt = MethodImpl.readWithNameSignatureModifiers(this, this, withGenericSignature, replyData);
                if (elt != null) {
                    elements.add(elt);
                }
                ++i;
            }
            this.fMethods = elements;
            List list = this.fMethods;
            return list;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public List methodsByName(String name) {
        ArrayList<MethodImpl> elements = new ArrayList<MethodImpl>();
        Iterator iter = this.visibleMethods().iterator();
        while (iter.hasNext()) {
            MethodImpl method = (MethodImpl)iter.next();
            if (!method.name().equals(name)) continue;
            elements.add(method);
        }
        return elements;
    }

    public List methodsByName(String name, String signature) {
        ArrayList<MethodImpl> elements = new ArrayList<MethodImpl>();
        Iterator iter = this.visibleMethods().iterator();
        while (iter.hasNext()) {
            MethodImpl method = (MethodImpl)iter.next();
            if (!method.name().equals(name) || !method.signature().equals(signature)) continue;
            elements.add(method);
        }
        return elements;
    }

    public String name() {
        if (this.fName == null) {
            this.setName(ReferenceTypeImpl.signatureToName(this.signature()));
        }
        return this.fName;
    }

    public String signature() {
        if (this.fSignature != null) {
            return this.fSignature;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(513, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            this.setSignature(this.readString("signature", replyData));
            String string = this.fSignature;
            return string;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public List nestedTypes() {
        ArrayList<ReferenceTypeImpl> result = new ArrayList<ReferenceTypeImpl>();
        Iterator itr = this.virtualMachineImpl().allRefTypes();
        while (itr.hasNext()) {
            try {
                ReferenceTypeImpl refType = (ReferenceTypeImpl)itr.next();
                String refName = refType.name();
                if (refName.length() <= this.name().length() || !refName.startsWith(this.name()) || refName.charAt(this.name().length()) != '$') continue;
                result.add(refType);
            }
            catch (ClassNotPreparedException classNotPreparedException) {}
        }
        return result;
    }

    public String sourceName() throws AbsentInformationException {
        return (String)this.sourceNames(this.virtualMachine().getDefaultStratum()).get(0);
    }

    public int getClassFileVersion() {
        this.virtualMachineImpl().checkHCRSupported();
        if (this.fGotClassFileVersion) {
            return this.fClassFileVersion;
        }
        this.initJdwpRequest();
        try {
            JdwpReplyPacket replyPacket = this.requestVM(32770, this);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            this.fIsHCREligible = this.readBoolean("HCR eligible", replyData);
            this.fIsVersionKnown = this.readBoolean("version known", replyData);
            this.fClassFileVersion = this.readInt("class file version", replyData);
            this.fGotClassFileVersion = true;
            int n = this.fClassFileVersion;
            return n;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return 0;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public boolean isVersionKnown() {
        this.getClassFileVersion();
        return this.fIsVersionKnown;
    }

    public boolean isHCREligible() {
        this.getClassFileVersion();
        return this.fIsHCREligible;
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        this.fReferenceTypeID.write(out);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("referenceType", this.fReferenceTypeID.value());
        }
    }

    public static void writeNull(MirrorImpl target, DataOutputStream out) throws IOException {
        JdwpReferenceTypeID ID = new JdwpReferenceTypeID(target.virtualMachineImpl());
        ID.write(out);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("referenceType", ID.value());
        }
    }

    public void writeWithTag(MirrorImpl target, DataOutputStream out) throws IOException {
        target.writeByte(this.typeTag(), "type tag", JdwpID.typeTagMap(), out);
        this.write(target, out);
    }

    public static ReferenceTypeImpl readWithTypeTag(MirrorImpl target, DataInputStream in) throws IOException {
        byte typeTag = target.readByte("type tag", JdwpID.typeTagMap(), in);
        switch (typeTag) {
            case 0: {
                return null;
            }
            case 3: {
                return ArrayTypeImpl.read(target, in);
            }
            case 1: {
                return ClassTypeImpl.read(target, in);
            }
            case 2: {
                return InterfaceTypeImpl.read(target, in);
            }
        }
        throw new InternalException(String.valueOf(JDIMessages.ReferenceTypeImpl_Invalid_ReferenceTypeID_tag_encountered___8) + typeTag);
    }

    public List allLineLocations() throws AbsentInformationException {
        return this.allLineLocations(this.virtualMachine().getDefaultStratum(), null);
    }

    public static ReferenceTypeImpl readWithTypeTagAndSignature(MirrorImpl target, boolean withGenericSignature, DataInputStream in) throws IOException {
        byte typeTag = target.readByte("type tag", JdwpID.typeTagMap(), in);
        switch (typeTag) {
            case 0: {
                return null;
            }
            case 3: {
                return ArrayTypeImpl.readWithSignature(target, withGenericSignature, in);
            }
            case 1: {
                return ClassTypeImpl.readWithSignature(target, withGenericSignature, in);
            }
            case 2: {
                return InterfaceTypeImpl.readWithSignature(target, withGenericSignature, in);
            }
        }
        throw new InternalException(String.valueOf(JDIMessages.ReferenceTypeImpl_Invalid_ReferenceTypeID_tag_encountered___8) + typeTag);
    }

    public static TypeImpl create(VirtualMachineImpl vmImpl, String signature, ClassLoaderReference classLoader) throws ClassNotLoadedException {
        ReferenceTypeImpl type;
        ReferenceTypeImpl refTypeBootstrap = null;
        List classes = vmImpl.classesBySignature(signature);
        Iterator iter = classes.iterator();
        while (iter.hasNext()) {
            type = (ReferenceTypeImpl)iter.next();
            if (type.classLoader() == null) {
                if (classLoader == null) {
                    return type;
                }
                refTypeBootstrap = type;
            }
            if (classLoader == null || !classLoader.equals((Object)type.classLoader())) continue;
            return type;
        }
        if (refTypeBootstrap != null) {
            return refTypeBootstrap;
        }
        iter = classes.iterator();
        while (iter.hasNext()) {
            type = (ReferenceTypeImpl)iter.next();
            List visibleTypes = classLoader.visibleClasses();
            Iterator visibleIter = visibleTypes.iterator();
            while (visibleIter.hasNext()) {
                if (!type.equals(visibleIter.next())) continue;
                return type;
            }
        }
        throw new ClassNotLoadedException(ReferenceTypeImpl.classSignatureToName(signature), JDIMessages.ReferenceTypeImpl_Type_has_not_been_loaded_10);
    }

    public static void getConstantMaps() {
        if (fgClassStatusStrings != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.ReferenceTypeImpl");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fgClassStatusStrings = new String[32];
        int i = 0;
        while (i < fields.length) {
            String name;
            Field field = fields[i];
            if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0 && (name = field.getName()).startsWith("JDWP_CLASS_STATUS_")) {
                name = name.substring(18);
                try {
                    int value = field.getInt(null);
                    int j = 0;
                    while (j < fgClassStatusStrings.length) {
                        if ((1 << j & value) != 0) {
                            ReferenceTypeImpl.fgClassStatusStrings[j] = name;
                            break;
                        }
                        ++j;
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (IllegalArgumentException illegalArgumentException) {}
            }
            ++i;
        }
    }

    public static String[] classStatusStrings() {
        ReferenceTypeImpl.getConstantMaps();
        return fgClassStatusStrings;
    }

    public Value createNullValue() {
        return null;
    }

    public List sourceNames(String stratumId) throws AbsentInformationException {
        ArrayList<String> list = new ArrayList<String>();
        Stratum stratum = this.getStratum(stratumId);
        if (stratum != null) {
            List fileInfos = stratum.fFileInfos;
            if (fileInfos.isEmpty()) {
                throw new AbsentInformationException(JDIMessages.ReferenceTypeImpl_30);
            }
            Iterator iter = stratum.fFileInfos.iterator();
            while (iter.hasNext()) {
                list.add(((FileInfo)iter.next()).fFileName);
            }
            return list;
        }
        if (this.fSourceName == null) {
            this.getSourceName();
        }
        list.add(this.fSourceName);
        return list;
    }

    public List sourcePaths(String stratumId) throws AbsentInformationException {
        ArrayList<String> list = new ArrayList<String>();
        Stratum stratum = this.getStratum(stratumId);
        if (stratum != null) {
            Iterator iter = stratum.fFileInfos.iterator();
            while (iter.hasNext()) {
                FileInfo fileInfo = (FileInfo)iter.next();
                String path = fileInfo.fAbsoluteFileName;
                if (path == null) {
                    path = this.getPath(fileInfo.fFileName);
                }
                list.add(path);
            }
            return list;
        }
        if (this.fSourceName == null) {
            this.getSourceName();
        }
        list.add(this.getPath(this.fSourceName));
        return list;
    }

    public String sourceDebugExtension() throws AbsentInformationException {
        if (this.isSourceDebugExtensionAvailable()) {
            return this.fSmap;
        }
        if (!this.virtualMachine().canGetSourceDebugExtension()) {
            throw new UnsupportedOperationException();
        }
        throw new AbsentInformationException();
    }

    public List allLineLocations(String stratum, String sourceName) throws AbsentInformationException {
        Iterator allMethods = this.methods().iterator();
        if (stratum == null) {
            stratum = this.defaultStratum();
        }
        ArrayList allLineLocations = null;
        HashMap sourceNameAllLineLocations = null;
        if (this.fStratumAllLineLocations == null) {
            this.fStratumAllLineLocations = new HashMap();
        } else {
            sourceNameAllLineLocations = (HashMap)this.fStratumAllLineLocations.get(stratum);
        }
        if (sourceNameAllLineLocations == null) {
            sourceNameAllLineLocations = new HashMap();
            this.fStratumAllLineLocations.put(stratum, sourceNameAllLineLocations);
        } else {
            allLineLocations = (ArrayList)sourceNameAllLineLocations.get(sourceName);
        }
        if (allLineLocations == null) {
            allLineLocations = new ArrayList();
            while (allMethods.hasNext()) {
                MethodImpl method = (MethodImpl)allMethods.next();
                if (method.isAbstract() || method.isNative()) continue;
                allLineLocations.addAll(method.allLineLocations(stratum, sourceName));
            }
            sourceNameAllLineLocations.put(sourceName, allLineLocations);
        }
        return allLineLocations;
    }

    public List locationsOfLine(String stratum, String sourceName, int lineNumber) throws AbsentInformationException {
        Iterator allMethods = this.methods().iterator();
        ArrayList locations = new ArrayList();
        boolean hasLineInformation = false;
        AbsentInformationException exception = null;
        while (allMethods.hasNext()) {
            MethodImpl method = (MethodImpl)allMethods.next();
            if (method.isAbstract() || method.isNative()) continue;
            try {
                locations.addAll(this.locationsOfLine(stratum, sourceName, lineNumber, method));
                hasLineInformation = true;
            }
            catch (AbsentInformationException e) {
                exception = e;
            }
        }
        if (!hasLineInformation && exception != null) {
            throw exception;
        }
        return locations;
    }

    public List availableStrata() {
        ArrayList<Object> list = new ArrayList<Object>();
        if (this.isSourceDebugExtensionAvailable()) {
            list.addAll(this.fStrata.keySet());
        }
        list.add("Java");
        return list;
    }

    public String defaultStratum() {
        if (this.isSourceDebugExtensionAvailable()) {
            return this.fDefaultStratumId;
        }
        return "Java";
    }

    private String getPath(String sourceName) {
        String name = this.name();
        int lastDotOffset = name.lastIndexOf(46);
        if (lastDotOffset == -1) {
            return sourceName;
        }
        char fileSeparator = System.getProperty("file.separator").charAt(0);
        return String.valueOf(name.substring(0, lastDotOffset).replace('.', fileSeparator)) + fileSeparator + sourceName;
    }

    private Stratum getStratum(String stratumId) {
        if (!"Java".equals(stratumId) && this.isSourceDebugExtensionAvailable()) {
            if (stratumId == null || !this.fStrata.keySet().contains(stratumId)) {
                stratumId = this.fDefaultStratumId;
            }
            if (!"Java".equals(stratumId)) {
                return (Stratum)this.fStrata.get(stratumId);
            }
        }
        return null;
    }

    private void getSourceDebugExtension() throws AbsentInformationException {
        block7: {
            this.initJdwpRequest();
            try {
                try {
                    JdwpReplyPacket replyPacket = this.requestVM(524, this);
                    if (replyPacket.errorCode() == 101) {
                        throw new AbsentInformationException(JDIMessages.ReferenceTypeImpl_31);
                    }
                    this.defaultReplyErrorHandler(replyPacket.errorCode());
                    DataInputStream replyData = replyPacket.dataInStream();
                    this.fSmap = this.readString(JDIMessages.ReferenceTypeImpl_32, replyData);
                }
                catch (IOException e) {
                    this.defaultIOExceptionHandler(e);
                    this.handledJdwpRequest();
                    break block7;
                }
            }
            catch (Throwable throwable) {
                this.handledJdwpRequest();
                throw throwable;
            }
            this.handledJdwpRequest();
        }
        if ("".equals(this.fSmap)) {
            throw new AbsentInformationException(JDIMessages.ReferenceTypeImpl_31);
        }
        this.fStrata = new HashMap();
        SourceDebugExtensionParser.parse(this.fSmap, this);
    }

    private void getSourceName() throws AbsentInformationException {
        if (this.fSourceName != null || this.isSourceDebugExtensionAvailable()) {
            return;
        }
        this.initJdwpRequest();
        try {
            try {
                JdwpReplyPacket replyPacket = this.requestVM(519, this);
                if (replyPacket.errorCode() == 101) {
                    throw new AbsentInformationException(JDIMessages.ReferenceTypeImpl_Source_name_is_not_known_7);
                }
                this.defaultReplyErrorHandler(replyPacket.errorCode());
                DataInputStream replyData = replyPacket.dataInStream();
                this.fSourceName = this.readString("source name", replyData);
            }
            catch (IOException e) {
                this.defaultIOExceptionHandler(e);
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    private synchronized boolean isSourceDebugExtensionAvailable() {
        if (!this.fSourceDebugExtensionAvailable) {
            return false;
        }
        if (!this.virtualMachine().canGetSourceDebugExtension()) {
            this.fSourceDebugExtensionAvailable = false;
            return false;
        }
        if (this.fSmap == null) {
            try {
                this.getSourceDebugExtension();
            }
            catch (AbsentInformationException absentInformationException) {
                this.fSourceDebugExtensionAvailable = false;
                return false;
            }
        }
        return true;
    }

    protected void setOutputFileName(String outputFileName) {
        this.fSourceName = outputFileName;
    }

    protected void setDefaultStratumId(String defaultStratumId) {
        this.fDefaultStratumId = defaultStratumId;
    }

    protected void addStratum(Stratum stratum) {
        this.fStrata.put(stratum.fId, stratum);
    }

    protected String sourceName(long codeIndex, MethodImpl method, String stratumId) throws AbsentInformationException {
        FileInfo fileInfo;
        Stratum stratum = this.getStratum(stratumId);
        if (stratum != null && (fileInfo = this.fileInfo(codeIndex, method, stratum)) != null) {
            return fileInfo.fFileName;
        }
        if (this.fSourceName == null) {
            this.getSourceName();
        }
        return this.fSourceName;
    }

    private FileInfo fileInfo(long codeIndex, MethodImpl method, Stratum stratum) {
        int fileId = stratum.fPrimaryFileId;
        if (stratum.fFileInfos.size() > 1) {
            List lineInfos = null;
            try {
                lineInfos = this.lineInfos(codeIndex, method, stratum);
            }
            catch (AbsentInformationException absentInformationException) {}
            if (lineInfos != null) {
                fileId = ((int[])lineInfos.get(0))[0];
            }
        }
        Iterator iter = stratum.fFileInfos.iterator();
        while (iter.hasNext()) {
            FileInfo fileInfo = (FileInfo)iter.next();
            if (fileInfo.fFileId != fileId) continue;
            return fileInfo;
        }
        return null;
    }

    private List lineInfos(long codeIndex, MethodImpl method, Stratum stratum) throws AbsentInformationException {
        int outputLineNumber = -1;
        try {
            outputLineNumber = method.javaStratumLineNumber(codeIndex);
        }
        catch (NativeMethodException nativeMethodException) {
            return null;
        }
        if (outputLineNumber != -1) {
            return stratum.getInputLineInfos(outputLineNumber);
        }
        return null;
    }

    protected String sourcePath(long codeIndex, MethodImpl method, String stratumId) throws AbsentInformationException {
        FileInfo fileInfo;
        Stratum stratum = this.getStratum(stratumId);
        if (stratum != null && (fileInfo = this.fileInfo(codeIndex, method, stratum)) != null) {
            String path = fileInfo.fAbsoluteFileName;
            if (path == null) {
                return this.getPath(fileInfo.fFileName);
            }
            return path;
        }
        if (this.fSourceName == null) {
            this.getSourceName();
        }
        return this.getPath(this.fSourceName);
    }

    protected int lineNumber(long codeIndex, MethodImpl method, String stratumId) {
        block6: {
            Stratum stratum = this.getStratum(stratumId);
            try {
                if (stratum == null) break block6;
                List lineInfos = this.lineInfos(codeIndex, method, stratum);
                if (lineInfos != null) {
                    return ((int[])lineInfos.get(0))[1];
                }
                return -1;
            }
            catch (AbsentInformationException absentInformationException) {
                return -1;
            }
        }
        try {
            return method.javaStratumLineNumber(codeIndex);
        }
        catch (NativeMethodException nativeMethodException) {
            return -1;
        }
    }

    public List locationsOfLine(String stratumId, String sourceName, int lineNumber, MethodImpl method) throws AbsentInformationException {
        Stratum stratum = this.getStratum(stratumId);
        ArrayList<Integer> javaLines = new ArrayList<Integer>();
        if (stratum != null) {
            boolean found = false;
            Iterator iter = stratum.fFileInfos.iterator();
            while (iter.hasNext() && !found) {
                FileInfo fileInfo = (FileInfo)iter.next();
                if (sourceName != null && !(found = sourceName.equals(fileInfo.fFileName))) continue;
                javaLines.addAll(fileInfo.getOutputLinesForLine(lineNumber));
            }
            if (sourceName != null && !found) {
                throw new AbsentInformationException(JDIMessages.ReferenceTypeImpl_34);
            }
        } else {
            javaLines.add(new Integer(lineNumber));
        }
        return method.javaStratumLocationsOfLines(javaLines);
    }

    public List allLineLocations(String stratumId, String sourceName, MethodImpl method, long[] codeIndexTable, int[] javaStratumLineNumberTable) throws AbsentInformationException {
        Stratum stratum = this.getStratum(stratumId);
        if (stratum != null) {
            int length;
            int i;
            int[][] lineInfoTable = new int[codeIndexTable.length][];
            if (sourceName == null) {
                int lastIndex = 0;
                i = 0;
                length = javaStratumLineNumberTable.length;
                while (i < length) {
                    int[] lineInfo;
                    List lineInfos = stratum.getInputLineInfos(javaStratumLineNumberTable[i]);
                    if (lineInfos != null && !(lineInfo = (int[])lineInfos.get(0)).equals(lineInfoTable[lastIndex])) {
                        lineInfoTable[i] = lineInfo;
                        lastIndex = i;
                    }
                    ++i;
                }
            } else {
                FileInfo fileInfo = stratum.getFileInfo(sourceName);
                if (fileInfo == null) {
                    throw new AbsentInformationException(JDIMessages.ReferenceTypeImpl_34);
                }
                int fileId = fileInfo.fFileId;
                int lastIndex = 0;
                int i2 = 0;
                int length2 = javaStratumLineNumberTable.length;
                while (i2 < length2) {
                    List lineInfos = stratum.getInputLineInfos(javaStratumLineNumberTable[i2]);
                    if (lineInfos != null) {
                        Iterator iter = lineInfos.iterator();
                        while (iter.hasNext()) {
                            int[] lineInfo = (int[])iter.next();
                            if (lineInfo[0] != fileId) continue;
                            if (lineInfo.equals(lineInfoTable[lastIndex])) break;
                            lineInfoTable[i2] = lineInfo;
                            lastIndex = i2;
                            break;
                        }
                    }
                    ++i2;
                }
            }
            ArrayList<LocationImpl> locations = new ArrayList<LocationImpl>();
            i = 0;
            length = lineInfoTable.length;
            while (i < length) {
                if (lineInfoTable[i] != null) {
                    locations.add(new LocationImpl(this.virtualMachineImpl(), method, codeIndexTable[i]));
                }
                ++i;
            }
            return locations;
        }
        ArrayList<LocationImpl> result = new ArrayList<LocationImpl>();
        int i = 0;
        while (i < codeIndexTable.length) {
            result.add(new LocationImpl(this.virtualMachineImpl(), method, codeIndexTable[i]));
            ++i;
        }
        return result;
    }

    public String genericSignature() {
        block8: {
            if (this.fGenericSignatureKnown) {
                return this.fGenericSignature;
            }
            if (this.virtualMachineImpl().isJdwpVersionGreaterOrEqual(1, 5)) {
                this.initJdwpRequest();
                try {
                    try {
                        JdwpReplyPacket replyPacket = this.requestVM(525, this);
                        this.defaultReplyErrorHandler(replyPacket.errorCode());
                        DataInputStream replyData = replyPacket.dataInStream();
                        this.setSignature(this.readString("signature", replyData));
                        this.fGenericSignature = this.readString("generic signature", replyData);
                        if (this.fGenericSignature.length() == 0) {
                            this.fGenericSignature = null;
                        }
                        this.fGenericSignatureKnown = true;
                        break block8;
                    }
                    catch (IOException e) {
                        this.defaultIOExceptionHandler(e);
                        this.handledJdwpRequest();
                        return null;
                    }
                }
                finally {
                    this.handledJdwpRequest();
                }
            }
            this.fGenericSignatureKnown = true;
        }
        return this.fGenericSignature;
    }

    public void setGenericSignature(String genericSignature) {
        if (genericSignature == null) {
            this.fGenericSignature = null;
            this.fGenericSignatureKnown = false;
        } else {
            this.fGenericSignature = genericSignature.length() == 0 ? null : genericSignature;
            this.fGenericSignatureKnown = true;
        }
    }

    public List instances(long maxInstances) {
        try {
            int max = (int)maxInstances;
            if (maxInstances >= Integer.MAX_VALUE) {
                max = Integer.MAX_VALUE;
            }
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.write(this, outData);
            this.writeInt(max, "max instances", outData);
            JdwpReplyPacket replyPacket = this.requestVM(528, outBytes);
            switch (replyPacket.errorCode()) {
                case 20: 
                case 21: {
                    throw new ObjectCollectedException(JDIMessages.class_or_object_not_known);
                }
                case 99: {
                    throw new UnsupportedOperationException(JDIMessages.ReferenceTypeImpl_27);
                }
                case 103: {
                    throw new IllegalArgumentException(JDIMessages.ReferenceTypeImpl_26);
                }
                case 112: {
                    throw new VMDisconnectedException(JDIMessages.vm_dead);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int elements = this.readInt("element count", replyData);
            if (max > 0 && elements > max) {
                elements = max;
            }
            ArrayList<ValueImpl> list = new ArrayList<ValueImpl>();
            int i = 0;
            while (i < elements) {
                list.add(ValueImpl.readWithTag(this, replyData));
                ++i;
            }
            ArrayList<ValueImpl> arrayList = list;
            return arrayList;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public int majorVersion() {
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.getRefTypeID().write(outData);
            JdwpReplyPacket replyPacket = this.requestVM(529, outBytes);
            switch (replyPacket.errorCode()) {
                case 20: 
                case 21: {
                    throw new ObjectCollectedException(JDIMessages.class_or_object_not_known);
                }
                case 101: {
                    return 0;
                }
                case 99: {
                    throw new UnsupportedOperationException(JDIMessages.ReferenceTypeImpl_no_class_version_support24);
                }
                case 112: {
                    throw new VMDisconnectedException(JDIMessages.vm_dead);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int n = this.readInt("major version", replyData);
            return n;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return 0;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public int minorVersion() {
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.getRefTypeID().write(outData);
            JdwpReplyPacket replyPacket = this.requestVM(529, outBytes);
            switch (replyPacket.errorCode()) {
                case 20: 
                case 21: {
                    throw new ObjectCollectedException(JDIMessages.class_or_object_not_known);
                }
                case 101: {
                    return 0;
                }
                case 99: {
                    throw new UnsupportedOperationException(JDIMessages.ReferenceTypeImpl_no_class_version_support24);
                }
                case 112: {
                    throw new VMDisconnectedException(JDIMessages.vm_dead);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            this.readInt("major version", replyData);
            int n = this.readInt("minor version", replyData);
            return n;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return 0;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public int constantPoolCount() {
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.getRefTypeID().write(outData);
            JdwpReplyPacket replyPacket = this.requestVM(530, outBytes);
            switch (replyPacket.errorCode()) {
                case 20: 
                case 21: {
                    throw new ObjectCollectedException(JDIMessages.class_or_object_not_known);
                }
                case 101: {
                    return 0;
                }
                case 99: {
                    throw new UnsupportedOperationException(JDIMessages.ReferenceTypeImpl_no_constant_pool_support);
                }
                case 112: {
                    throw new VMDisconnectedException(JDIMessages.vm_dead);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int n = this.readInt("pool count", replyData);
            return n;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return 0;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public byte[] constantPool() {
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.getRefTypeID().write(outData);
            JdwpReplyPacket replyPacket = this.requestVM(530, outBytes);
            switch (replyPacket.errorCode()) {
                case 20: 
                case 21: {
                    throw new ObjectCollectedException(JDIMessages.class_or_object_not_known);
                }
                case 101: {
                    byte[] byArray = new byte[]{};
                    return byArray;
                }
                case 99: {
                    throw new UnsupportedOperationException(JDIMessages.ReferenceTypeImpl_no_constant_pool_support);
                }
                case 112: {
                    throw new VMDisconnectedException(JDIMessages.vm_dead);
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            this.readInt("pool count", replyData);
            int bytes = this.readInt("byte count", replyData);
            byte[] array = new byte[bytes];
            int i = 0;
            while (i < bytes) {
                array[i] = this.readByte("byte read", replyData);
                ++i;
            }
            byte[] byArray = array;
            return byArray;
        }
        catch (IOException e) {
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    protected static class FileInfo {
        protected int fFileId;
        protected String fFileName;
        protected String fAbsoluteFileName;
        private HashMap fLineInfo;

        public FileInfo(int fileId, String fileName, String absoluteFileName) {
            this.fFileId = fileId;
            this.fFileName = fileName;
            this.fAbsoluteFileName = absoluteFileName;
            this.fLineInfo = new HashMap();
        }

        public void addLineInfo(int inputLine, int outputStartLine, int outputLineRange) {
            Integer key = new Integer(inputLine);
            ArrayList<int[]> outputLines = (ArrayList<int[]>)this.fLineInfo.get(key);
            if (outputLines == null) {
                outputLines = new ArrayList<int[]>();
                this.fLineInfo.put(key, outputLines);
            }
            outputLines.add(new int[]{outputStartLine, outputLineRange});
        }

        public List getOutputLinesForLine(int lineNumber) {
            ArrayList<Integer> list = new ArrayList<Integer>();
            List outputLines = (List)this.fLineInfo.get(new Integer(lineNumber));
            if (outputLines != null) {
                Iterator iter = outputLines.iterator();
                while (iter.hasNext()) {
                    int[] info = (int[])iter.next();
                    int outputLineNumber = info[0];
                    int length = info[1];
                    if (length == 0) {
                        ++length;
                    }
                    int i = 0;
                    while (i < length) {
                        list.add(new Integer(outputLineNumber++));
                        ++i;
                    }
                }
            }
            return list;
        }

        public boolean equals(Object object) {
            if (!(object instanceof FileInfo)) {
                return false;
            }
            return this.fFileId == ((FileInfo)object).fFileId;
        }
    }

    protected static class Stratum {
        private String fId;
        private List fFileInfos;
        private int fPrimaryFileId;
        private HashMap fOutputLineToInputLine;

        public Stratum(String id) {
            this.fId = id;
            this.fFileInfos = new ArrayList();
            this.fOutputLineToInputLine = new HashMap();
            this.fPrimaryFileId = -1;
        }

        public void addFileInfo(int fileId, String fileName) throws AbsentInformationException {
            this.addFileInfo(fileId, fileName, null);
        }

        public void addFileInfo(int fileId, String fileName, String absoluteFileName) throws AbsentInformationException {
            FileInfo fileInfo;
            if (this.fPrimaryFileId == -1) {
                this.fPrimaryFileId = fileId;
            }
            if (this.fFileInfos.contains(fileInfo = new FileInfo(fileId, fileName, absoluteFileName))) {
                throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.ReferenceTypeImpl_28, (Object[])new String[]{Integer.toString(fileId), this.fId}));
            }
            this.fFileInfos.add(fileInfo);
        }

        public void addLineInfo(int inputStartLine, int lineFileId, int repeatCount, int outputStartLine, int outputLineIncrement) throws AbsentInformationException {
            FileInfo fileInfo = null;
            Iterator iter = this.fFileInfos.iterator();
            while (iter.hasNext()) {
                FileInfo element = (FileInfo)iter.next();
                if (element.fFileId != lineFileId) continue;
                fileInfo = element;
            }
            if (fileInfo == null) {
                throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.ReferenceTypeImpl_29, (Object[])new String[]{Integer.toString(lineFileId)}));
            }
            int i = 0;
            while (i < repeatCount) {
                fileInfo.addLineInfo(inputStartLine, outputStartLine, outputLineIncrement);
                if (outputLineIncrement == 0) {
                    this.addLineInfoToMap(inputStartLine, lineFileId, outputStartLine);
                } else {
                    int j = 0;
                    while (j < outputLineIncrement) {
                        this.addLineInfoToMap(inputStartLine, lineFileId, outputStartLine);
                        ++j;
                        ++outputStartLine;
                    }
                }
                ++i;
                ++inputStartLine;
            }
        }

        private void addLineInfoToMap(int inputStartLine, int lineFileId, int outputStartLine) {
            Integer key = new Integer(outputStartLine);
            ArrayList<int[]> inputLines = (ArrayList<int[]>)this.fOutputLineToInputLine.get(key);
            if (inputLines == null) {
                inputLines = new ArrayList<int[]>();
                this.fOutputLineToInputLine.put(key, inputLines);
            }
            inputLines.add(new int[]{lineFileId, inputStartLine});
        }

        public FileInfo getFileInfo(String sourceName) {
            Iterator iter = this.fFileInfos.iterator();
            while (iter.hasNext()) {
                FileInfo fileInfo = (FileInfo)iter.next();
                if (!fileInfo.fFileName.equals(sourceName)) continue;
                return fileInfo;
            }
            return null;
        }

        public List getInputLineInfos(int outputLineNumber) {
            return (List)this.fOutputLineToInputLine.get(new Integer(outputLineNumber));
        }
    }
}

