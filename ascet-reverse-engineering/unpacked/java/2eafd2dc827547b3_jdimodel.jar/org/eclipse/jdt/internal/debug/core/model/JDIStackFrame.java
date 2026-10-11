/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.AbsentInformationException
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Field
 *  com.sun.jdi.IncompatibleThreadStateException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.LocalVariable
 *  com.sun.jdi.Location
 *  com.sun.jdi.Method
 *  com.sun.jdi.NativeMethodException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.StackFrame
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  com.sun.jdi.VirtualMachine
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IRegisterGroup
 *  org.eclipse.debug.core.model.IStackFrame
 *  org.eclipse.debug.core.model.IThread
 *  org.eclipse.debug.core.model.IVariable
 *  org.eclipse.jdt.core.Signature
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.AbsentInformationException;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.ClassType;
import com.sun.jdi.Field;
import com.sun.jdi.IncompatibleThreadStateException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.LocalVariable;
import com.sun.jdi.Location;
import com.sun.jdi.Method;
import com.sun.jdi.NativeMethodException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.StackFrame;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IRegisterGroup;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.debug.core.model.IThread;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdi.hcr.ThreadReference;
import org.eclipse.jdi.hcr.VirtualMachine;
import org.eclipse.jdi.internal.ValueImpl;
import org.eclipse.jdi.internal.VirtualMachineImpl;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.IJavaThread;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugElement;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIFieldVariable;
import org.eclipse.jdt.internal.debug.core.model.JDILocalVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;
import org.eclipse.jdt.internal.debug.core.model.JDIThisVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;
import org.eclipse.jdt.internal.debug.core.model.JDIType;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JDIStackFrame
extends JDIDebugElement
implements IJavaStackFrame {
    private int fDepth = -2;
    private StackFrame fStackFrame;
    private JDIThread fThread;
    private List fVariables;
    private ObjectReference fThisObject;
    private String fReceivingTypeName;
    private boolean fRefreshVariables = true;
    private boolean fIsOutOfSynch = false;
    private boolean fLocalsAvailable = true;
    private Location fLocation;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public JDIStackFrame(JDIThread thread, StackFrame frame, int depth) {
        super((JDIDebugTarget)thread.getDebugTarget());
        this.setThread(thread);
        this.bind(frame, depth);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected JDIStackFrame bind(StackFrame frame, int depth) {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            Location location;
            Method method;
            block9: {
                if (this.fDepth == -2) {
                    this.fStackFrame = frame;
                    this.fDepth = depth;
                    this.fLocation = frame.location();
                    return this;
                }
                if (depth != -1) break block9;
                this.fDepth = -1;
                this.fStackFrame = null;
                return null;
            }
            if (this.fDepth == depth && (method = (location = frame.location()).method()).equals((Object)this.fLocation.method())) {
                try {
                    if (method.declaringType().defaultStratum().equals("Java") || this.equals(this.getSourceName(location), this.getSourceName(this.fLocation))) {
                        this.fStackFrame = frame;
                        this.fLocation = location;
                        this.clearCachedData();
                        return this;
                    }
                }
                catch (DebugException debugException) {}
            }
            this.bind(null, -1);
            return new JDIStackFrame(this.fThread, frame, depth);
        }
    }

    public IThread getThread() {
        return this.fThread;
    }

    public boolean canResume() {
        return this.getThread().canResume();
    }

    public boolean canSuspend() {
        return this.getThread().canSuspend();
    }

    public boolean canStepInto() {
        try {
            return this.exists() && this.isTopStackFrame() && !this.isObsolete() && this.getThread().canStepInto();
        }
        catch (DebugException e) {
            this.logError((Exception)((Object)e));
            return false;
        }
    }

    public boolean canStepOver() {
        return this.exists() && !this.isObsolete() && this.getThread().canStepOver();
    }

    public boolean canStepReturn() {
        block5: {
            if (this.exists() && !this.isObsolete() && this.getThread().canStepReturn()) break block5;
            return false;
        }
        try {
            List frames = ((JDIThread)this.getThread()).computeStackFrames();
            if (frames != null && !frames.isEmpty()) {
                int index;
                boolean bottomFrame = this.equals(frames.get(frames.size() - 1));
                boolean aboveObsoleteFrame = false;
                if (!bottomFrame && (index = frames.indexOf(this)) < frames.size() - 1 && ((JDIStackFrame)frames.get(index + 1)).isObsolete()) {
                    aboveObsoleteFrame = true;
                }
                return !bottomFrame && !aboveObsoleteFrame;
            }
        }
        catch (DebugException e) {
            this.logError((Exception)((Object)e));
        }
        return false;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Method getUnderlyingMethod() {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            return this.fLocation.method();
        }
    }

    public IVariable[] getVariables() throws DebugException {
        List list = this.getVariables0();
        return list.toArray(new IVariable[list.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected List getVariables0() throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            if (this.fVariables == null) {
                if (this.isNative()) {
                    this.requestFailed(JDIDebugModelMessages.JDIStackFrame_Variable_information_unavailable_for_native_methods, null);
                }
                Method method = this.getUnderlyingMethod();
                this.fVariables = new ArrayList();
                if (method.isStatic()) {
                    List allFields = null;
                    ReferenceType declaringType = method.declaringType();
                    try {
                        allFields = declaringType.allFields();
                    }
                    catch (RuntimeException e) {
                        this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_fields, (Object[])new String[]{e.toString()}), e);
                        return Collections.EMPTY_LIST;
                    }
                    if (allFields != null) {
                        Iterator fields = allFields.iterator();
                        while (fields.hasNext()) {
                            Field field = (Field)fields.next();
                            if (!field.isStatic()) continue;
                            this.fVariables.add(new JDIFieldVariable((JDIDebugTarget)this.getDebugTarget(), field, declaringType));
                        }
                        Collections.sort(this.fVariables, new Comparator(){

                            public int compare(Object a, Object b) {
                                JDIFieldVariable v1 = (JDIFieldVariable)a;
                                JDIFieldVariable v2 = (JDIFieldVariable)b;
                                try {
                                    return v1.getName().compareToIgnoreCase(v2.getName());
                                }
                                catch (DebugException de) {
                                    JDIStackFrame.this.logError((Exception)((Object)de));
                                    return -1;
                                }
                            }
                        });
                    }
                } else {
                    ObjectReference t = this.getUnderlyingThisObject();
                    if (t != null) {
                        this.fVariables.add(new JDIThisVariable((JDIDebugTarget)this.getDebugTarget(), t));
                    }
                }
                Iterator variables = this.getUnderlyingVisibleVariables().iterator();
                while (variables.hasNext()) {
                    LocalVariable var = (LocalVariable)variables.next();
                    this.fVariables.add(new JDILocalVariable(this, var));
                }
            } else if (this.fRefreshVariables) {
                this.updateVariables();
            }
            this.fRefreshVariables = false;
            return this.fVariables;
        }
    }

    public String getName() throws DebugException {
        return this.getMethodName();
    }

    public List getArgumentTypeNames() throws DebugException {
        try {
            Method underlyingMethod = this.getUnderlyingMethod();
            String genericSignature = underlyingMethod.genericSignature();
            if (genericSignature == null) {
                return underlyingMethod.argumentTypeNames();
            }
            String[] parameterTypes = Signature.getParameterTypes((String)genericSignature);
            ArrayList<String> argumentTypeNames = new ArrayList<String>();
            int i = 0;
            while (i < parameterTypes.length) {
                argumentTypeNames.add(Signature.toString((String)parameterTypes[i]).replace('/', '.'));
                ++i;
            }
            return argumentTypeNames;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_argument_type_names, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int getLineNumber() throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            try {
                return this.fLocation.lineNumber();
            }
            catch (RuntimeException e) {
                if (this.getThread().isSuspended()) {
                    this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_line_number, (Object[])new String[]{e.toString()}), e);
                }
            }
        }
        return -1;
    }

    public boolean isStepping() {
        return this.getThread().isStepping();
    }

    public boolean isSuspended() {
        return this.getThread().isSuspended();
    }

    public void resume() throws DebugException {
        this.getThread().resume();
    }

    public void stepInto() throws DebugException {
        if (!this.canStepInto()) {
            return;
        }
        this.getThread().stepInto();
    }

    public void stepOver() throws DebugException {
        if (!this.canStepOver()) {
            return;
        }
        if (this.isTopStackFrame()) {
            this.getThread().stepOver();
        } else {
            ((JDIThread)this.getThread()).stepToFrame(this);
        }
    }

    public void stepReturn() throws DebugException {
        if (!this.canStepReturn()) {
            return;
        }
        if (this.isTopStackFrame()) {
            this.getThread().stepReturn();
        } else {
            List frames = ((JDIThread)this.getThread()).computeStackFrames();
            int index = frames.indexOf(this);
            if (index >= 0 && index < frames.size() - 1) {
                IStackFrame nextFrame = (IStackFrame)frames.get(index + 1);
                ((JDIThread)this.getThread()).stepToFrame(nextFrame);
            }
        }
    }

    public void suspend() throws DebugException {
        this.getThread().suspend();
    }

    protected void updateVariables() throws DebugException {
        JDILocalVariable local;
        if (this.fVariables == null) {
            return;
        }
        Method method = this.getUnderlyingMethod();
        int index = 0;
        if (!method.isStatic()) {
            ObjectReference thisObject = this.getUnderlyingThisObject();
            JDIThisVariable oldThisObject = null;
            if (!this.fVariables.isEmpty() && this.fVariables.get(0) instanceof JDIThisVariable) {
                oldThisObject = (JDIThisVariable)this.fVariables.get(0);
            }
            if (thisObject == null && oldThisObject != null) {
                this.fVariables.remove(0);
                index = 0;
            } else if (oldThisObject == null && thisObject != null) {
                oldThisObject = new JDIThisVariable((JDIDebugTarget)this.getDebugTarget(), thisObject);
                this.fVariables.add(0, oldThisObject);
                index = 1;
            } else if (oldThisObject != null) {
                if (!oldThisObject.retrieveValue().equals(thisObject)) {
                    this.fVariables.remove(0);
                    this.fVariables.add(0, new JDIThisVariable((JDIDebugTarget)this.getDebugTarget(), thisObject));
                }
                index = 1;
            }
        }
        List locals = null;
        try {
            locals = this.getUnderlyingStackFrame().visibleVariables();
        }
        catch (AbsentInformationException absentInformationException) {
            locals = Collections.EMPTY_LIST;
        }
        catch (NativeMethodException nativeMethodException) {
            locals = Collections.EMPTY_LIST;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_visible_variables, (Object[])new String[]{e.toString()}), e);
            return;
        }
        int localIndex = -1;
        while (index < this.fVariables.size()) {
            Object var = this.fVariables.get(index);
            if (var instanceof JDILocalVariable) {
                local = (JDILocalVariable)this.fVariables.get(index);
                localIndex = locals.indexOf(local.getLocal());
                if (localIndex >= 0) {
                    local.setLocal((LocalVariable)locals.get(localIndex));
                    locals.remove(localIndex);
                    ++index;
                    continue;
                }
                this.fVariables.remove(index);
                continue;
            }
            ++index;
        }
        Iterator newOnes = locals.iterator();
        while (newOnes.hasNext()) {
            local = new JDILocalVariable(this, (LocalVariable)newOnes.next());
            this.fVariables.add(local);
        }
    }

    public boolean canDropToFrame() {
        return this.supportsDropToFrame();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean supportsDropToFrame() {
        JDIThread thread = (JDIThread)this.getThread();
        JDIDebugTarget target = (JDIDebugTarget)thread.getDebugTarget();
        try {
            if (!target.isAvailable()) return false;
            if (!thread.isSuspended()) return false;
            if (thread.isTerminated()) return false;
            if (thread.isInvokingMethod()) {
                return false;
            }
            boolean j9Support = false;
            boolean jdkSupport = target.canPopFrames();
            com.sun.jdi.VirtualMachine vm = this.getVM();
            if (vm == null) {
                return false;
            }
            try {
                j9Support = thread.getUnderlyingThread() instanceof ThreadReference && ((VirtualMachine)vm).canDoReturn();
            }
            catch (UnsupportedOperationException unsupportedOperationException) {
                j9Support = false;
            }
            if (!jdkSupport) {
                if (!j9Support) return false;
            }
            List frames = thread.computeStackFrames();
            if (jdkSupport && frames.size() > 0 && frames.get(frames.size() - 1) == this) {
                return false;
            }
            int index = 0;
            JDIStackFrame frame = null;
            do {
                if (index >= frames.size()) {
                    return false;
                }
                frame = (JDIStackFrame)frames.get(index);
                ++index;
                if (!frame.isNative()) continue;
                return false;
            } while (!frame.equals(this));
            if (!jdkSupport) return true;
            if (index >= frames.size()) return true;
            if (!((JDIStackFrame)frames.get(index)).isNative()) return true;
            return false;
        }
        catch (DebugException e) {
            if (e.getStatus().getException() instanceof IncompatibleThreadStateException) return false;
            if (e.getStatus().getCode() == 100) {
                return false;
            }
            this.logError((Exception)((Object)e));
            return false;
        }
        catch (UnsupportedOperationException unsupportedOperationException) {
            return false;
        }
        catch (RuntimeException e) {
            this.internalError(e);
        }
        return false;
    }

    public void dropToFrame() throws DebugException {
        if (this.supportsDropToFrame()) {
            ((JDIThread)this.getThread()).dropToFrame(this);
        } else {
            this.notSupported(JDIDebugModelMessages.JDIStackFrame_Drop_to_frame_not_supported);
        }
    }

    public void popFrame() throws DebugException {
        if (this.supportsDropToFrame()) {
            ((JDIThread)this.getThread()).popFrame(this);
        } else {
            this.notSupported(JDIDebugModelMessages.JDIStackFrame_pop_frame_not_supported);
        }
    }

    public IJavaVariable findVariable(String varName) throws DebugException {
        if (this.isNative()) {
            return null;
        }
        IVariable[] variables = this.getVariables();
        IJavaVariable thisVariable = null;
        int i = 0;
        while (i < variables.length) {
            IJavaVariable var = (IJavaVariable)variables[i];
            if (var.getName().equals(varName)) {
                return var;
            }
            if (var instanceof JDIThisVariable) {
                thisVariable = var;
            }
            ++i;
        }
        if (thisVariable != null) {
            IVariable[] thisChildren = thisVariable.getValue().getVariables();
            int i2 = 0;
            while (i2 < thisChildren.length) {
                IJavaVariable var = (IJavaVariable)thisChildren[i2];
                if (var.getName().equals(varName)) {
                    return var;
                }
                ++i2;
            }
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected List getUnderlyingVisibleVariables() throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            List variables = Collections.EMPTY_LIST;
            try {
                variables = this.getUnderlyingStackFrame().visibleVariables();
            }
            catch (AbsentInformationException absentInformationException) {
                this.setLocalsAvailable(false);
            }
            catch (NativeMethodException nativeMethodException) {
                this.setLocalsAvailable(false);
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_visible_variables_2, (Object[])new String[]{e.toString()}), e);
            }
            return variables;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected ObjectReference getUnderlyingThisObject() throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            block6: {
                if (this.fStackFrame != null && this.fThisObject != null || this.isStatic()) break block6;
                try {
                    this.fThisObject = this.getUnderlyingStackFrame().thisObject();
                }
                catch (RuntimeException e) {
                    this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_this, (Object[])new String[]{e.toString()}), e);
                    return null;
                }
            }
            return this.fThisObject;
        }
    }

    public Object getAdapter(Class adapter) {
        block12: {
            block11: {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jdt.debug.core.IJavaStackFrame");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (adapter == clazz) break block11;
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$1 = Class.forName("org.eclipse.jdt.debug.core.IJavaModifiers");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (adapter != clazz2) break block12;
            }
            return this;
        }
        return super.getAdapter(adapter);
    }

    public String getSignature() throws DebugException {
        try {
            return this.getUnderlyingMethod().signature();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_method_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getDeclaringTypeName() throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            try {
                if (this.isObsolete()) {
                    return JDIDebugModelMessages.JDIStackFrame__unknown_declaring_type__1;
                }
                return JDIReferenceType.getGenericName(this.getUnderlyingMethod().declaringType());
            }
            catch (RuntimeException e) {
                if (this.getThread().isSuspended()) {
                    this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_declaring_type, (Object[])new String[]{e.toString()}), e);
                }
                return JDIDebugModelMessages.JDIStackFrame__unknown_declaring_type__1;
            }
        }
    }

    public String getReceivingTypeName() throws DebugException {
        if (this.fStackFrame == null || this.fReceivingTypeName == null) {
            try {
                ObjectReference thisObject;
                this.fReceivingTypeName = this.isObsolete() ? JDIDebugModelMessages.JDIStackFrame__unknown_receiving_type__2 : ((thisObject = this.getUnderlyingThisObject()) == null ? this.getDeclaringTypeName() : JDIReferenceType.getGenericName(thisObject.referenceType()));
            }
            catch (RuntimeException e) {
                if (this.getThread().isSuspended()) {
                    this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_receiving_type, (Object[])new String[]{e.toString()}), e);
                }
                return JDIDebugModelMessages.JDIStackFrame__unknown_receiving_type__2;
            }
        }
        return this.fReceivingTypeName;
    }

    public String getMethodName() throws DebugException {
        try {
            return this.getUnderlyingMethod().name();
        }
        catch (RuntimeException e) {
            if (this.getThread().isSuspended()) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_method_name, (Object[])new String[]{e.toString()}), e);
            }
            return JDIDebugModelMessages.JDIStackFrame__unknown_method__1;
        }
    }

    public boolean isNative() throws DebugException {
        return this.getUnderlyingMethod().isNative();
    }

    public boolean isConstructor() throws DebugException {
        return this.getUnderlyingMethod().isConstructor();
    }

    public boolean isStaticInitializer() throws DebugException {
        return this.getUnderlyingMethod().isStaticInitializer();
    }

    public boolean isFinal() throws DebugException {
        return this.getUnderlyingMethod().isFinal();
    }

    public boolean isSynchronized() throws DebugException {
        return this.getUnderlyingMethod().isSynchronized();
    }

    public boolean isSynthetic() throws DebugException {
        return this.getUnderlyingMethod().isSynthetic();
    }

    public boolean isPublic() throws DebugException {
        return this.getUnderlyingMethod().isPublic();
    }

    public boolean isPrivate() throws DebugException {
        return this.getUnderlyingMethod().isPrivate();
    }

    public boolean isProtected() throws DebugException {
        return this.getUnderlyingMethod().isProtected();
    }

    public boolean isPackagePrivate() throws DebugException {
        return this.getUnderlyingMethod().isPackagePrivate();
    }

    public boolean isStatic() throws DebugException {
        return this.getUnderlyingMethod().isStatic();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getSourceName() throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            return this.getSourceName(this.fLocation);
        }
    }

    private String getSourceName(Location location) throws DebugException {
        try {
            return location.sourceName();
        }
        catch (AbsentInformationException absentInformationException) {
            return null;
        }
        catch (NativeMethodException nativeMethodException) {
            return null;
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_source_name, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    private boolean equals(Object o1, Object o2) {
        if (o1 == null) {
            return o2 == null;
        }
        return o1.equals(o2);
    }

    protected boolean isTopStackFrame() throws DebugException {
        IStackFrame tos = this.getThread().getTopStackFrame();
        return tos != null && tos.equals(this);
    }

    public void setOutOfSynch(boolean outOfSynch) {
        this.fIsOutOfSynch = outOfSynch;
    }

    public boolean isOutOfSynch() throws DebugException {
        JDIDebugTarget target;
        if (this.fIsOutOfSynch) {
            return true;
        }
        return this.getThread().isSuspended() && (target = (JDIDebugTarget)this.getDebugTarget()).hasHCROccurred() && target.isOutOfSynch(this.getUnderlyingMethod().declaringType().name());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isObsolete() {
        if (!JDIDebugPlugin.isJdiVersionGreaterThanOrEqual(new int[]{1, 4}) || !((JDIDebugTarget)this.getDebugTarget()).hasHCROccurred()) {
            return false;
        }
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            if (this.getThread().isSuspended()) {
                return this.getUnderlyingMethod().isObsolete();
            }
            return false;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected boolean exists() {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            return this.fDepth != -1;
        }
    }

    public boolean canTerminate() {
        return this.exists() && this.getThread().canTerminate() || this.getDebugTarget().canTerminate();
    }

    public boolean isTerminated() {
        return this.getThread().isTerminated();
    }

    public void terminate() throws DebugException {
        if (this.getThread().canTerminate()) {
            this.getThread().terminate();
        } else {
            this.getDebugTarget().terminate();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected StackFrame getUnderlyingStackFrame() throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            if (this.fStackFrame == null) {
                if (this.fDepth == -1) {
                    throw new DebugException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 130, JDIDebugModelMessages.JDIStackFrame_25, null));
                }
                if (this.fThread.isSuspended()) {
                    this.fThread.computeStackFrames();
                    if (this.fDepth == -1) {
                        throw new DebugException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 130, JDIDebugModelMessages.JDIStackFrame_25, null));
                    }
                } else {
                    throw new DebugException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 100, JDIDebugModelMessages.JDIStackFrame_25, null));
                }
            }
            return this.fStackFrame;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setUnderlyingStackFrame(StackFrame frame) {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            this.fStackFrame = frame;
            if (frame == null) {
                this.fRefreshVariables = true;
            }
        }
    }

    protected void setThread(JDIThread thread) {
        this.fThread = thread;
    }

    protected void setVariables(List variables) {
        this.fVariables = variables;
    }

    public IJavaVariable[] getLocalVariables() throws DebugException {
        List list = this.getUnderlyingVisibleVariables();
        IJavaVariable[] locals = new IJavaVariable[list.size()];
        int i = 0;
        while (i < list.size()) {
            locals[i] = new JDILocalVariable(this, (LocalVariable)list.get(i));
            ++i;
        }
        return locals;
    }

    public IJavaObject getThis() throws DebugException {
        ObjectReference thisObject;
        IJavaObject receiver = null;
        if (!this.isStatic() && (thisObject = this.getUnderlyingThisObject()) != null) {
            receiver = (IJavaObject)((Object)JDIValue.createValue((JDIDebugTarget)this.getDebugTarget(), (Value)thisObject));
        }
        return receiver;
    }

    public IRegisterGroup[] getRegisterGroups() {
        return new IRegisterGroup[0];
    }

    public IJavaClassType getDeclaringType() throws DebugException {
        Method method = this.getUnderlyingMethod();
        try {
            ReferenceType type = method.declaringType();
            if (type instanceof ClassType) {
                return (IJavaClassType)((Object)JDIType.createType((JDIDebugTarget)this.getDebugTarget(), (Type)type));
            }
            this.targetRequestFailed(JDIDebugModelMessages.JDIStackFrame_0, null);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retreiving_declaring_type, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    public IJavaReferenceType getReferenceType() throws DebugException {
        Method method = this.getUnderlyingMethod();
        try {
            ReferenceType type = method.declaringType();
            return (IJavaReferenceType)((Object)JDIType.createType((JDIDebugTarget)this.getDebugTarget(), (Type)type));
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retreiving_declaring_type, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public int getCharEnd() {
        return -1;
    }

    public int getCharStart() {
        return -1;
    }

    private void clearCachedData() {
        this.fThisObject = null;
        this.fReceivingTypeName = null;
    }

    public boolean wereLocalsAvailable() {
        return this.fLocalsAvailable;
    }

    private void setLocalsAvailable(boolean available) {
        if (available != this.fLocalsAvailable) {
            this.fLocalsAvailable = available;
            this.fireChangeEvent(256);
        }
    }

    public boolean hasRegisterGroups() {
        return false;
    }

    public boolean hasVariables() throws DebugException {
        return this.getVariables0().size() > 0;
    }

    public boolean canStepWithFilters() {
        if (this.canStepInto()) {
            String[] filters = this.getJavaDebugTarget().getStepFilters();
            return filters != null && filters.length > 0;
        }
        return false;
    }

    public void stepWithFilters() throws DebugException {
        ((IJavaThread)this.getThread()).stepWithFilters();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getSourcePath(String stratum) throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            try {
                return this.fLocation.sourcePath(stratum);
            }
            catch (AbsentInformationException absentInformationException) {
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_source_path, (Object[])new String[]{e.toString()}), e);
            }
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getSourcePath() throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            try {
                return this.fLocation.sourcePath();
            }
            catch (AbsentInformationException absentInformationException) {
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_source_path, (Object[])new String[]{e.toString()}), e);
            }
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int getLineNumber(String stratum) throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            try {
                return this.fLocation.lineNumber(stratum);
            }
            catch (RuntimeException e) {
                if (this.getThread().isSuspended()) {
                    this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_line_number, (Object[])new String[]{e.toString()}), e);
                }
            }
        }
        return -1;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getSourceName(String stratum) throws DebugException {
        JDIThread jDIThread = this.fThread;
        synchronized (jDIThread) {
            try {
                return this.fLocation.sourceName(stratum);
            }
            catch (AbsentInformationException absentInformationException) {
            }
            catch (NativeMethodException nativeMethodException) {
            }
            catch (RuntimeException e) {
                this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIStackFrame_exception_retrieving_source_name, (Object[])new String[]{e.toString()}), e);
            }
        }
        return null;
    }

    public boolean isVarArgs() throws DebugException {
        return this.getUnderlyingMethod().isVarArgs();
    }

    public boolean canForceReturn() {
        block5: {
            if (this.getJavaDebugTarget().supportsForceReturn() && this.isSuspended()) {
                block6: {
                    try {
                        if (this.isNative()) break block5;
                        if (!this.isTopStackFrame()) break block6;
                        return true;
                    }
                    catch (DebugException debugException) {}
                }
                List frames = this.fThread.computeStackFrames();
                int index = frames.indexOf(this);
                if (index > 0) {
                    JDIStackFrame prev = (JDIStackFrame)frames.get(index - 1);
                    return prev.canDropToFrame();
                }
            }
        }
        return false;
    }

    public void forceReturn(IJavaValue value) throws DebugException {
        if (this.isTopStackFrame()) {
            this.fThread.forceReturn(value);
        } else {
            Method method = this.getUnderlyingMethod();
            try {
                ValueImpl.checkValue(((JDIValue)value).getUnderlyingValue(), method.returnType(), (VirtualMachineImpl)method.virtualMachine());
            }
            catch (InvalidTypeException e) {
                this.targetRequestFailed(JDIDebugModelMessages.JDIStackFrame_26, e);
            }
            catch (ClassNotLoadedException e) {
                this.targetRequestFailed(JDIDebugModelMessages.JDIThread_48, e);
            }
            List frames = this.fThread.computeStackFrames();
            int index = frames.indexOf(this);
            if (index > 0) {
                JDIStackFrame prev = (JDIStackFrame)frames.get(index - 1);
                this.fThread.popFrame(prev);
                this.fThread.forceReturn(value);
            }
        }
    }
}

