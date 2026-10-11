/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.ClassLoaderReference
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.Locatable
 *  com.sun.jdi.Location
 *  com.sun.jdi.Method
 *  com.sun.jdi.Type
 */
package org.eclipse.jdi.internal;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ClassLoaderReference;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.Locatable;
import com.sun.jdi.Location;
import com.sun.jdi.Method;
import com.sun.jdi.Type;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import org.eclipse.jdi.internal.AccessibleImpl;
import org.eclipse.jdi.internal.GenericSignature;
import org.eclipse.jdi.internal.JDIMessages;
import org.eclipse.jdi.internal.LocalVariableImpl;
import org.eclipse.jdi.internal.LocationImpl;
import org.eclipse.jdi.internal.MirrorImpl;
import org.eclipse.jdi.internal.ReferenceTypeImpl;
import org.eclipse.jdi.internal.TypeComponentImpl;
import org.eclipse.jdi.internal.TypeImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdi.internal.jdwp.JdwpMethodID;
import org.eclipse.jdi.internal.jdwp.JdwpReplyPacket;

public class MethodImpl
extends TypeComponentImpl
implements Method,
Locatable {
    public static final int INVOKE_SINGLE_THREADED_JDWP = 1;
    public static final int INVOKE_NONVIRTUAL_JDWP = 2;
    private static String[] fgInvokeOptions = null;
    private JdwpMethodID fMethodID;
    private List fVariables = null;
    private long fLowestValidCodeIndex = -1L;
    private long fHighestValidCodeIndex = -1L;
    private Map fCodeIndexToLine = null;
    private Map fLineToCodeIndexes = null;
    private Map fStratumAllLineLocations = null;
    private int fArgumentSlotsCount = -1;
    private List fArguments = null;
    private List fArgumentTypes = null;
    private List fArgumentTypeNames = null;
    private List fArgumentTypeSignatures = null;
    private byte[] fByteCodes = null;
    private long[] fCodeIndexTable;
    private int[] fJavaStratumLineNumberTable;
    private String fReturnTypeName = null;
    static /* synthetic */ Class class$0;

    public MethodImpl(VirtualMachineImpl vmImpl, ReferenceTypeImpl declaringType, JdwpMethodID methodID, String name, String signature, String genericSignature, int modifierBits) {
        super("Method", vmImpl, declaringType, name, signature, genericSignature, modifierBits);
        this.fMethodID = methodID;
    }

    protected void flushStoredJdwpResults() {
        this.fVariables = null;
        this.fLowestValidCodeIndex = -1L;
        this.fHighestValidCodeIndex = -1L;
        this.fCodeIndexToLine = null;
        this.fLineToCodeIndexes = null;
        this.fStratumAllLineLocations = null;
        this.fCodeIndexTable = null;
        this.fJavaStratumLineNumberTable = null;
        this.fArgumentSlotsCount = -1;
        this.fArguments = null;
        this.fArgumentTypes = null;
        this.fArgumentTypeNames = null;
        this.fArgumentTypeSignatures = null;
        this.fByteCodes = null;
    }

    protected JdwpMethodID getMethodID() {
        return this.fMethodID;
    }

    protected Map javaStratumCodeIndexToLine() throws AbsentInformationException {
        if (this.isAbstract()) {
            return Collections.EMPTY_MAP;
        }
        this.getLineTable();
        return this.fCodeIndexToLine;
    }

    protected List javaStratumLineToCodeIndexes(int line) throws AbsentInformationException {
        if (this.isAbstract() || this.isNative()) {
            return null;
        }
        this.getLineTable();
        return (List)this.fLineToCodeIndexes.get(new Integer(line));
    }

    private void getLineTable() throws AbsentInformationException {
        if (this.isObsolete()) {
            return;
        }
        if (this.fCodeIndexToLine != null) {
            if (this.fCodeIndexToLine.isEmpty()) {
                throw new AbsentInformationException(JDIMessages.MethodImpl_Got_empty_line_number_table_for_this_method_1);
            }
            return;
        }
        this.initJdwpRequest();
        try {
            try {
                ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
                DataOutputStream outData = new DataOutputStream(outBytes);
                this.writeWithReferenceType(this, outData);
                JdwpReplyPacket replyPacket = this.requestVM(1537, outBytes);
                switch (replyPacket.errorCode()) {
                    case 101: {
                        throw new AbsentInformationException(JDIMessages.MethodImpl_No_line_number_information_available_2);
                    }
                    case 511: {
                        throw new AbsentInformationException(JDIMessages.MethodImpl_No_line_number_information_available_2);
                    }
                }
                this.defaultReplyErrorHandler(replyPacket.errorCode());
                DataInputStream replyData = replyPacket.dataInStream();
                this.fLowestValidCodeIndex = this.readLong("lowest index", replyData);
                this.fHighestValidCodeIndex = this.readLong("highest index", replyData);
                int nrOfElements = this.readInt("elements", replyData);
                this.fCodeIndexToLine = new HashMap();
                this.fLineToCodeIndexes = new HashMap();
                if (nrOfElements == 0) {
                    throw new AbsentInformationException(JDIMessages.MethodImpl_Got_empty_line_number_table_for_this_method_3);
                }
                this.fCodeIndexTable = new long[nrOfElements];
                this.fJavaStratumLineNumberTable = new int[nrOfElements];
                int i = 0;
                while (i < nrOfElements) {
                    long lineCodeIndex = this.readLong("code index", replyData);
                    Long lineCodeIndexLong = new Long(lineCodeIndex);
                    int lineNr = this.readInt("line nr", replyData);
                    Integer lineNrInt = new Integer(lineNr);
                    this.fCodeIndexToLine.put(lineCodeIndexLong, lineNrInt);
                    this.fCodeIndexTable[i] = lineCodeIndex;
                    this.fJavaStratumLineNumberTable[i] = lineNr;
                    ArrayList<Long> lineNrEntry = (ArrayList<Long>)this.fLineToCodeIndexes.get(lineNrInt);
                    if (lineNrEntry == null) {
                        lineNrEntry = new ArrayList<Long>();
                        this.fLineToCodeIndexes.put(lineNrInt, lineNrEntry);
                    }
                    lineNrEntry.add(lineCodeIndexLong);
                    ++i;
                }
            }
            catch (IOException e) {
                this.fCodeIndexToLine = null;
                this.fLineToCodeIndexes = null;
                this.defaultIOExceptionHandler(e);
                this.handledJdwpRequest();
            }
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    protected int javaStratumLineNumber(long lineCodeIndex) throws AbsentInformationException {
        Long lineCodeIndexObj;
        Integer lineNrObj;
        if (this.isAbstract() || this.isNative() || this.isObsolete()) {
            return -1;
        }
        this.getLineTable();
        if (lineCodeIndex > this.fHighestValidCodeIndex) {
            throw new AbsentInformationException(JDIMessages.MethodImpl_Invalid_code_index_of_a_location_given_4);
        }
        long index = lineCodeIndex;
        do {
            lineCodeIndexObj = new Long(index);
        } while ((lineNrObj = (Integer)this.javaStratumCodeIndexToLine().get(lineCodeIndexObj)) == null && --index >= this.fLowestValidCodeIndex);
        if (lineNrObj == null) {
            if (lineCodeIndex >= this.fLowestValidCodeIndex) {
                index = lineCodeIndex;
                do {
                    lineCodeIndexObj = new Long(index);
                } while ((lineNrObj = (Integer)this.javaStratumCodeIndexToLine().get(lineCodeIndexObj)) == null && ++index <= this.fHighestValidCodeIndex);
                if (lineNrObj != null) {
                    return lineNrObj;
                }
            }
            throw new AbsentInformationException(JDIMessages.MethodImpl_Invalid_code_index_of_a_location_given_4);
        }
        return lineNrObj;
    }

    public List allLineLocations() throws AbsentInformationException {
        return this.allLineLocations(this.virtualMachine().getDefaultStratum(), null);
    }

    public List arguments() throws AbsentInformationException {
        if (this.isNative() || this.isAbstract()) {
            throw new AbsentInformationException(JDIMessages.MethodImpl_No_local_variable_information_available_9);
        }
        if (this.fArguments != null) {
            return this.fArguments;
        }
        ArrayList<LocalVariableImpl> result = new ArrayList<LocalVariableImpl>();
        Iterator iter = this.variables().iterator();
        while (iter.hasNext()) {
            LocalVariableImpl var = (LocalVariableImpl)iter.next();
            if (!var.isArgument()) continue;
            result.add(var);
        }
        this.fArguments = result;
        return this.fArguments;
    }

    public List argumentTypeNames() {
        if (this.fArgumentTypeNames != null) {
            return this.fArgumentTypeNames;
        }
        List argumentTypeSignatures = this.argumentTypeSignatures();
        ArrayList<String> result = new ArrayList<String>();
        Iterator iter = argumentTypeSignatures.iterator();
        while (iter.hasNext()) {
            result.add(TypeImpl.signatureToName((String)iter.next()));
        }
        this.fArgumentTypeNames = result;
        return this.fArgumentTypeNames;
    }

    private List argumentTypeSignatures() {
        if (this.fArgumentTypeSignatures != null) {
            return this.fArgumentTypeSignatures;
        }
        this.fArgumentTypeSignatures = GenericSignature.getParameterTypes(this.signature());
        return this.fArgumentTypeSignatures;
    }

    public List argumentTypes() throws ClassNotLoadedException {
        if (this.fArgumentTypes != null) {
            return this.fArgumentTypes;
        }
        ArrayList<TypeImpl> result = new ArrayList<TypeImpl>();
        Iterator iter = this.argumentTypeSignatures().iterator();
        ClassLoaderReference classLoaderRef = this.declaringType().classLoader();
        VirtualMachineImpl vm = this.virtualMachineImpl();
        while (iter.hasNext()) {
            String argumentTypeSignature = (String)iter.next();
            result.add(TypeImpl.create(vm, argumentTypeSignature, classLoaderRef));
        }
        this.fArgumentTypes = result;
        return this.fArgumentTypes;
    }

    public byte[] bytecodes() {
        if (this.fByteCodes != null) {
            return this.fByteCodes;
        }
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.writeWithReferenceType(this, outData);
            JdwpReplyPacket replyPacket = this.requestVM(1539, outBytes);
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            int length = this.readInt("length", replyData);
            byte[] byArray = this.fByteCodes = this.readByteArray(length, "bytecodes", replyData);
            return byArray;
        }
        catch (IOException e) {
            this.fByteCodes = null;
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    public int hashCode() {
        return this.fMethodID.hashCode();
    }

    public boolean equals(Object object) {
        return object != null && object.getClass().equals(this.getClass()) && this.fMethodID.equals(((MethodImpl)object).fMethodID) && this.referenceTypeImpl().equals(((MethodImpl)object).referenceTypeImpl());
    }

    public int compareTo(Object object) {
        int index2;
        if (object == null || !object.getClass().equals(this.getClass())) {
            throw new ClassCastException(JDIMessages.MethodImpl_Can__t_compare_method_to_given_object_6);
        }
        Method type2 = (Method)object;
        if (!this.declaringType().equals((Object)type2.declaringType())) {
            return this.declaringType().compareTo((Object)type2.declaringType());
        }
        int index1 = this.declaringType().methods().indexOf(this);
        if (index1 < (index2 = type2.declaringType().methods().indexOf(type2))) {
            return -1;
        }
        if (index1 > index2) {
            return 1;
        }
        return 0;
    }

    public boolean isAbstract() {
        return (this.fModifierBits & 0x400) != 0;
    }

    public boolean isConstructor() {
        return this.name().equals("<init>");
    }

    public boolean isNative() {
        return (this.fModifierBits & 0x100) != 0;
    }

    public boolean isStaticInitializer() {
        return this.name().equals("<clinit>");
    }

    public boolean isSynchronized() {
        return (this.fModifierBits & 0x20) != 0;
    }

    public Location locationOfCodeIndex(long index) {
        if (this.isAbstract() || this.isNative()) {
            return null;
        }
        try {
            Integer lineNrInt = (Integer)this.javaStratumCodeIndexToLine().get(new Long(index));
            if (lineNrInt == null) {
                throw new AbsentInformationException(MessageFormat.format((String)JDIMessages.MethodImpl_No_valid_location_at_the_specified_code_index__0__2, (Object[])new Object[]{Long.toString(index)}));
            }
        }
        catch (AbsentInformationException absentInformationException) {}
        return new LocationImpl(this.virtualMachineImpl(), this, index);
    }

    public List locationsOfLine(int line) throws AbsentInformationException {
        return this.locationsOfLine(this.virtualMachine().getDefaultStratum(), null, line);
    }

    public Type returnType() throws ClassNotLoadedException {
        int startIndex = this.signature().lastIndexOf(41) + 1;
        return TypeImpl.create(this.virtualMachineImpl(), this.signature().substring(startIndex), this.declaringType().classLoader());
    }

    public String returnTypeName() {
        if (this.fReturnTypeName != null) {
            return this.fReturnTypeName;
        }
        int startIndex = this.signature().lastIndexOf(41) + 1;
        this.fReturnTypeName = TypeImpl.signatureToName(this.signature().substring(startIndex));
        return this.fReturnTypeName;
    }

    public List variables() throws AbsentInformationException {
        if (this.isNative() || this.isAbstract()) {
            throw new AbsentInformationException(JDIMessages.MethodImpl_No_local_variable_information_available_9);
        }
        if (this.fVariables != null) {
            return this.fVariables;
        }
        this.initJdwpRequest();
        try {
            ByteArrayOutputStream outBytes = new ByteArrayOutputStream();
            DataOutputStream outData = new DataOutputStream(outBytes);
            this.writeWithReferenceType(this, outData);
            boolean withGenericSignature = this.virtualMachineImpl().isJdwpVersionGreaterOrEqual(1, 5);
            int jdwpCommand = withGenericSignature ? 1541 : 1538;
            JdwpReplyPacket replyPacket = this.requestVM(jdwpCommand, outBytes);
            switch (replyPacket.errorCode()) {
                case 101: {
                    List list = this.inferArguments();
                    return list;
                }
            }
            this.defaultReplyErrorHandler(replyPacket.errorCode());
            DataInputStream replyData = replyPacket.dataInStream();
            this.fArgumentSlotsCount = this.readInt("arg count", replyData);
            int nrOfElements = this.readInt("elements", replyData);
            ArrayList<LocalVariableImpl> variables = new ArrayList<LocalVariableImpl>(nrOfElements);
            int i = 0;
            while (i < nrOfElements) {
                boolean isArgument;
                long codeIndex = this.readLong("code index", replyData);
                String name = this.readString("name", replyData);
                String signature = this.readString("signature", replyData);
                String genericSignature = null;
                if (withGenericSignature && "".equals(genericSignature = this.readString("generic signature", replyData))) {
                    genericSignature = null;
                }
                int length = this.readInt("length", replyData);
                int slot = this.readInt("slot", replyData);
                boolean bl = isArgument = slot < this.fArgumentSlotsCount;
                if (this.isStatic() || slot > 0) {
                    LocalVariableImpl localVar = new LocalVariableImpl(this.virtualMachineImpl(), this, codeIndex, name, signature, genericSignature, length, slot, isArgument);
                    variables.add(localVar);
                }
                ++i;
            }
            this.fVariables = variables;
            List list = this.fVariables;
            return list;
        }
        catch (IOException e) {
            this.fArgumentSlotsCount = -1;
            this.fVariables = null;
            this.defaultIOExceptionHandler(e);
            return null;
        }
        finally {
            this.handledJdwpRequest();
        }
    }

    private List inferArguments() throws AbsentInformationException {
        String[] genericSignatures;
        String genericSignature = this.genericSignature();
        String[] signatures = this.argumentTypeSignatures().toArray(new String[0]);
        if (genericSignature == null) {
            genericSignatures = new String[signatures.length];
        } else {
            genericSignatures = GenericSignature.getParameterTypes(genericSignature).toArray(new String[0]);
            int i = 0;
            while (i < genericSignatures.length) {
                if (genericSignatures[i].equals(signatures[i])) {
                    genericSignatures[i] = null;
                }
                ++i;
            }
        }
        int slot = 0;
        if (!this.isStatic()) {
            ++slot;
        }
        if (signatures.length > 0) {
            this.fArgumentSlotsCount = signatures.length;
            this.fVariables = new ArrayList(this.fArgumentSlotsCount);
            int i = 0;
            while (i < signatures.length) {
                String name = "arg" + i;
                LocalVariableImpl localVar = new LocalVariableImpl(this.virtualMachineImpl(), this, 0L, name, signatures[i], genericSignatures[i], -1, slot, true);
                this.fVariables.add(localVar);
                ++slot;
                ++i;
            }
            return this.fVariables;
        }
        throw new AbsentInformationException(JDIMessages.MethodImpl_No_local_variable_information_available_9);
    }

    public List variablesByName(String name) throws AbsentInformationException {
        Iterator iter = this.variables().iterator();
        ArrayList<LocalVariableImpl> result = new ArrayList<LocalVariableImpl>();
        while (iter.hasNext()) {
            LocalVariableImpl var = (LocalVariableImpl)iter.next();
            if (!var.name().equals(name)) continue;
            result.add(var);
        }
        return result;
    }

    public Location location() {
        if (this.isAbstract()) {
            return null;
        }
        if (this.isNative()) {
            return new LocationImpl(this.virtualMachineImpl(), this, -1L);
        }
        try {
            this.getLineTable();
        }
        catch (AbsentInformationException absentInformationException) {
            return new LocationImpl(this.virtualMachineImpl(), this, -1L);
        }
        return new LocationImpl(this.virtualMachineImpl(), this, this.fLowestValidCodeIndex);
    }

    public void write(MirrorImpl target, DataOutputStream out) throws IOException {
        this.fMethodID.write(out);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("method", this.fMethodID.value());
        }
    }

    protected void writeWithReferenceType(MirrorImpl target, DataOutputStream out) throws IOException {
        this.referenceTypeImpl().write(target, out);
        this.write(target, out);
    }

    protected void writeWithReferenceTypeWithTag(MirrorImpl target, DataOutputStream out) throws IOException {
        this.referenceTypeImpl().writeWithTag(target, out);
        this.write(target, out);
    }

    protected static MethodImpl readWithReferenceTypeWithTag(MirrorImpl target, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        ReferenceTypeImpl referenceType = ReferenceTypeImpl.readWithTypeTag(target, in);
        if (referenceType == null) {
            return null;
        }
        JdwpMethodID ID = new JdwpMethodID(vmImpl);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("method", ID.value());
        }
        ID.read(in);
        if (ID.isNull()) {
            return null;
        }
        MethodImpl method = referenceType.findMethod(ID);
        if (method == null) {
            throw new InternalError(JDIMessages.MethodImpl_Got_MethodID_of_ReferenceType_that_is_not_a_member_of_the_ReferenceType_10);
        }
        return method;
    }

    protected static MethodImpl readWithNameSignatureModifiers(ReferenceTypeImpl target, ReferenceTypeImpl referenceType, boolean withGenericSignature, DataInputStream in) throws IOException {
        VirtualMachineImpl vmImpl = target.virtualMachineImpl();
        JdwpMethodID ID = new JdwpMethodID(vmImpl);
        ID.read(in);
        if (target.fVerboseWriter != null) {
            target.fVerboseWriter.println("method", ID.value());
        }
        if (ID.isNull()) {
            return null;
        }
        String name = target.readString("name", in);
        String signature = target.readString("signature", in);
        String genericSignature = null;
        if (withGenericSignature && "".equals(genericSignature = target.readString("generic signature", in))) {
            genericSignature = null;
        }
        int modifierBits = target.readInt("modifiers", AccessibleImpl.getModifierStrings(), in);
        MethodImpl mirror = new MethodImpl(vmImpl, referenceType, ID, name, signature, genericSignature, modifierBits);
        return mirror;
    }

    public static void getConstantMaps() {
        if (fgInvokeOptions != null) {
            return;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jdi.internal.MethodImpl");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Field[] fields = clazz.getDeclaredFields();
        fgInvokeOptions = new String[32];
        int i = 0;
        while (i < fields.length) {
            block12: {
                Field field = fields[i];
                if ((field.getModifiers() & 1) != 0 && (field.getModifiers() & 8) != 0 && (field.getModifiers() & 0x10) != 0) {
                    try {
                        String name = field.getName();
                        if (!name.startsWith("INVOKE_")) break block12;
                        int value = field.getInt(null);
                        int j = 0;
                        while (j < fgInvokeOptions.length) {
                            if ((1 << j & value) != 0) {
                                MethodImpl.fgInvokeOptions[j] = name;
                                break;
                            }
                            ++j;
                        }
                    }
                    catch (IllegalAccessException illegalAccessException) {
                    }
                    catch (IllegalArgumentException illegalArgumentException) {}
                }
            }
            ++i;
        }
    }

    protected static String[] getInvokeOptions() {
        MethodImpl.getConstantMaps();
        return fgInvokeOptions;
    }

    public boolean isObsolete() {
        if (this.virtualMachineImpl().isJdwpVersionGreaterOrEqual(1, 4)) {
            return this.fMethodID.value() == 0L;
        }
        return false;
    }

    public List allLineLocations(String stratum, String sourceName) throws AbsentInformationException {
        if (this.isAbstract() || this.isNative()) {
            return Collections.EMPTY_LIST;
        }
        if (stratum == null) {
            stratum = this.declaringType().defaultStratum();
        }
        List allLineLocations = null;
        HashMap<String, List> sourceNameAllLineLocations = null;
        if (this.fStratumAllLineLocations == null) {
            this.fStratumAllLineLocations = new HashMap();
        } else {
            sourceNameAllLineLocations = (HashMap<String, List>)this.fStratumAllLineLocations.get(stratum);
        }
        if (sourceNameAllLineLocations == null) {
            sourceNameAllLineLocations = new HashMap<String, List>();
            this.fStratumAllLineLocations.put(stratum, sourceNameAllLineLocations);
        } else {
            allLineLocations = (List)sourceNameAllLineLocations.get(sourceName);
        }
        if (allLineLocations == null) {
            this.getLineTable();
            allLineLocations = this.referenceTypeImpl().allLineLocations(stratum, sourceName, this, this.fCodeIndexTable, this.fJavaStratumLineNumberTable);
            sourceNameAllLineLocations.put(sourceName, allLineLocations);
        }
        return allLineLocations;
    }

    public List locationsOfLine(String stratum, String sourceName, int lineNumber) throws AbsentInformationException {
        if (this.isAbstract() || this.isNative()) {
            return Collections.EMPTY_LIST;
        }
        return this.referenceTypeImpl().locationsOfLine(stratum, sourceName, lineNumber, this);
    }

    protected List javaStratumLocationsOfLines(List javaLines) throws AbsentInformationException {
        TreeSet tmpLocations = new TreeSet();
        Iterator iter = javaLines.iterator();
        while (iter.hasNext()) {
            Integer key = (Integer)iter.next();
            List indexes = this.javaStratumLineToCodeIndexes(key);
            if (indexes == null) continue;
            tmpLocations.addAll(indexes);
        }
        ArrayList<LocationImpl> locations = new ArrayList<LocationImpl>();
        Iterator iter2 = tmpLocations.iterator();
        while (iter2.hasNext()) {
            long index = (Long)iter2.next();
            int position = Arrays.binarySearch(this.fCodeIndexTable, index);
            if (position != 0 && tmpLocations.contains(new Long(this.fCodeIndexTable[position - 1]))) continue;
            locations.add(new LocationImpl(this.virtualMachineImpl(), this, index));
        }
        return locations;
    }

    public boolean isBridge() {
        return (this.fModifierBits & 0x40) != 0;
    }

    public boolean isVarArgs() {
        return !this.virtualMachine().name().equals("j9") && (this.fModifierBits & 0x80) != 0;
    }
}

