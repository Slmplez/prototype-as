/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.emf.common.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.DiagnosticException;
import org.eclipse.emf.common.util.WrappedException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicDiagnostic
implements Diagnostic,
DiagnosticChain {
    protected int severity;
    protected String message;
    protected List<Diagnostic> children;
    protected List<?> data;
    protected String source;
    protected int code;

    public BasicDiagnostic() {
    }

    public BasicDiagnostic(String source, int code, String message, Object[] data) {
        this.source = source;
        this.code = code;
        this.message = message;
        this.data = this.dataAsList(data);
    }

    public BasicDiagnostic(int severity, String source, int code, String message, Object[] data) {
        this(source, code, message, data);
        this.severity = severity;
    }

    public BasicDiagnostic(String source, int code, List<? extends Diagnostic> children, String message, Object[] data) {
        this(source, code, message, data);
        if (children != null) {
            for (Diagnostic diagnostic : children) {
                this.add(diagnostic);
            }
        }
    }

    protected List<?> dataAsList(Object[] data) {
        if (data == null) {
            return Collections.EMPTY_LIST;
        }
        Object[] copy = new Object[data.length];
        System.arraycopy(data, 0, copy, 0, data.length);
        return new BasicEList.UnmodifiableEList(copy.length, copy);
    }

    protected void setSeverity(int severity) {
        this.severity = severity;
    }

    @Override
    public int getSeverity() {
        return this.severity;
    }

    @Override
    public String getMessage() {
        return this.message;
    }

    @Override
    public List<?> getData() {
        return this.data;
    }

    @Override
    public List<Diagnostic> getChildren() {
        if (this.children == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(this.children);
    }

    protected void setSource(String source) {
        this.source = source;
    }

    @Override
    public String getSource() {
        return this.source;
    }

    protected void setCode(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return this.code;
    }

    @Override
    public void add(Diagnostic diagnostic) {
        if (this.children == null) {
            this.children = new BasicEList<Diagnostic>();
        }
        this.children.add(diagnostic);
        int childSeverity = diagnostic.getSeverity();
        if (childSeverity > this.getSeverity()) {
            this.severity = childSeverity;
        }
    }

    @Override
    public void addAll(Diagnostic diagnostic) {
        for (Diagnostic child : diagnostic.getChildren()) {
            this.add(child);
        }
    }

    @Override
    public void merge(Diagnostic diagnostic) {
        if (diagnostic.getChildren().isEmpty()) {
            this.add(diagnostic);
        } else {
            this.addAll(diagnostic);
        }
    }

    public int recomputeSeverity() {
        if (this.children != null) {
            this.severity = 0;
            for (Diagnostic child : this.children) {
                int childSeverity;
                int n = childSeverity = child instanceof BasicDiagnostic ? ((BasicDiagnostic)child).recomputeSeverity() : child.getSeverity();
                if (childSeverity <= this.severity) continue;
                this.severity = childSeverity;
            }
        }
        return this.severity;
    }

    @Override
    public Throwable getException() {
        List<?> data = this.getData();
        if (data != null) {
            for (Object datum : data) {
                if (!(datum instanceof Throwable)) continue;
                return (Throwable)datum;
            }
        }
        return null;
    }

    public String toString() {
        StringBuilder result = new StringBuilder();
        result.append("Diagnostic ");
        switch (this.severity) {
            case 0: {
                result.append("OK");
                break;
            }
            case 1: {
                result.append("INFO");
                break;
            }
            case 2: {
                result.append("WARNING");
                break;
            }
            case 4: {
                result.append("ERROR");
                break;
            }
            case 8: {
                result.append("CANCEL");
                break;
            }
            default: {
                result.append(Integer.toHexString(this.severity));
            }
        }
        result.append(" source=");
        result.append(this.source);
        result.append(" code=");
        result.append(this.code);
        result.append(' ');
        result.append(this.message);
        if (this.data != null) {
            result.append(" data=");
            result.append(this.data);
        }
        if (this.children != null) {
            result.append(' ');
            result.append(this.children);
        }
        return result.toString();
    }

    public static IStatus toIStatus(Diagnostic diagnostic) {
        return StatusWrapper.convert(diagnostic);
    }

    public static IStatus toIStatus(DiagnosticException diagnosticException) {
        return StatusWrapper.create(diagnosticException);
    }

    public static Diagnostic toDiagnostic(IStatus status) {
        return DiagnosticWrapper.convert(status);
    }

    public static Diagnostic toDiagnostic(Throwable throwable) {
        Diagnostic diagnostic;
        if (throwable instanceof DiagnosticException) {
            return ((DiagnosticException)throwable).getDiagnostic();
        }
        if (throwable instanceof WrappedException) {
            return BasicDiagnostic.toDiagnostic(throwable.getCause());
        }
        if (EMFPlugin.IS_ECLIPSE_RUNNING && (diagnostic = EclipseHelper.toDiagnostic(throwable)) != null) {
            return diagnostic;
        }
        String message = throwable.getClass().getName();
        int index = message.lastIndexOf(46);
        if (index >= 0) {
            message = message.substring(index + 1);
        }
        if (throwable.getLocalizedMessage() != null) {
            message = String.valueOf(message) + ": " + throwable.getLocalizedMessage();
        }
        BasicDiagnostic basicDiagnostic = new BasicDiagnostic(4, "org.eclipse.emf.common", 0, message, new Object[]{throwable});
        if (throwable.getCause() != null && throwable.getCause() != throwable) {
            throwable = throwable.getCause();
            basicDiagnostic.add(BasicDiagnostic.toDiagnostic(throwable));
        }
        return basicDiagnostic;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class DiagnosticWrapper
    implements Diagnostic {
        protected IStatus status;
        protected List<Diagnostic> wrappedChildren;
        protected List<Diagnostic> unmodifiableWrappedChildren;
        protected List<Object> data;

        public DiagnosticWrapper(IStatus status) {
            this.status = status;
        }

        @Override
        public int getCode() {
            return this.status.getCode();
        }

        @Override
        public String getMessage() {
            return this.status.getMessage();
        }

        @Override
        public int getSeverity() {
            return this.status.getSeverity();
        }

        @Override
        public String getSource() {
            return this.status.getPlugin();
        }

        @Override
        public Throwable getException() {
            return this.status.getException();
        }

        public List<Diagnostic> basicGetChildren() {
            if (this.wrappedChildren == null) {
                IStatus[] children = this.status.getChildren();
                if (children.length == 0) {
                    this.wrappedChildren = new ArrayList<Diagnostic>();
                } else {
                    this.wrappedChildren = new ArrayList<Diagnostic>(children.length);
                    IStatus[] iStatusArray = children;
                    int n = children.length;
                    int n2 = 0;
                    while (n2 < n) {
                        IStatus child = iStatusArray[n2];
                        this.wrappedChildren.add(BasicDiagnostic.toDiagnostic(child));
                        ++n2;
                    }
                }
            }
            return this.wrappedChildren;
        }

        @Override
        public List<Diagnostic> getChildren() {
            if (this.unmodifiableWrappedChildren == null) {
                this.unmodifiableWrappedChildren = Collections.unmodifiableList(this.basicGetChildren());
            }
            return this.unmodifiableWrappedChildren;
        }

        @Override
        public List<?> getData() {
            if (this.data == null) {
                ArrayList<Throwable> list = new ArrayList<Throwable>(2);
                Throwable exception = this.getException();
                if (exception != null) {
                    list.add(exception);
                }
                list.add((Throwable)this.status);
                this.data = Collections.unmodifiableList(list);
            }
            return this.data;
        }

        public static Diagnostic convert(IStatus status) {
            return status instanceof StatusWrapper ? ((StatusWrapper)status).diagnostic : new DiagnosticWrapper(status);
        }
    }

    private static class EclipseHelper {
        private EclipseHelper() {
        }

        public static Diagnostic toDiagnostic(Throwable throwable) {
            if (throwable instanceof CoreException) {
                IStatus status = ((CoreException)throwable).getStatus();
                DiagnosticWrapper wrapperDiagnostic = new DiagnosticWrapper(status);
                Throwable cause = throwable.getCause();
                if (cause != null && cause != throwable) {
                    wrapperDiagnostic.basicGetChildren().add(BasicDiagnostic.toDiagnostic(cause));
                }
                return wrapperDiagnostic;
            }
            return null;
        }
    }

    private static class StatusWrapper
    implements IStatus {
        protected static final IStatus[] EMPTY_CHILDREN = new IStatus[0];
        protected Throwable throwable;
        protected Diagnostic diagnostic;
        protected IStatus[] wrappedChildren;

        public StatusWrapper(Diagnostic diagnostic) {
            this.diagnostic = diagnostic;
        }

        public StatusWrapper(DiagnosticException diagnosticException) {
            this.throwable = diagnosticException;
            this.diagnostic = diagnosticException.getDiagnostic();
        }

        public IStatus[] getChildren() {
            if (this.wrappedChildren == null) {
                List<Diagnostic> children = this.diagnostic.getChildren();
                if (children.isEmpty()) {
                    this.wrappedChildren = EMPTY_CHILDREN;
                } else {
                    this.wrappedChildren = new IStatus[children.size()];
                    int i = 0;
                    while (i < this.wrappedChildren.length) {
                        this.wrappedChildren[i] = BasicDiagnostic.toIStatus(children.get(i));
                        ++i;
                    }
                }
            }
            return this.wrappedChildren;
        }

        public int getCode() {
            return this.diagnostic.getCode();
        }

        public Throwable getException() {
            return this.throwable != null ? this.throwable : this.diagnostic.getException();
        }

        public String getMessage() {
            return this.diagnostic.getMessage();
        }

        public String getPlugin() {
            return this.diagnostic.getSource();
        }

        public int getSeverity() {
            return this.diagnostic.getSeverity();
        }

        public boolean isMultiStatus() {
            return !this.diagnostic.getChildren().isEmpty();
        }

        public boolean isOK() {
            return this.diagnostic.getSeverity() == 0;
        }

        public boolean matches(int severityMask) {
            return (this.diagnostic.getSeverity() & severityMask) != 0;
        }

        public String toString() {
            return this.diagnostic.toString();
        }

        public static IStatus convert(Diagnostic diagnostic) {
            return diagnostic instanceof DiagnosticWrapper ? ((DiagnosticWrapper)diagnostic).status : new StatusWrapper(diagnostic);
        }

        public static IStatus create(DiagnosticException diagnosticException) {
            return new StatusWrapper(diagnosticException);
        }
    }
}

