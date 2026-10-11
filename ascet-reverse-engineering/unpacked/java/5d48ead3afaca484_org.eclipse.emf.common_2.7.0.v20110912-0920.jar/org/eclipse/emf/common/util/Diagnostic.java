/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.util;

import java.util.List;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.util.BasicDiagnostic;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Diagnostic {
    public static final int OK = 0;
    public static final int INFO = 1;
    public static final int WARNING = 2;
    public static final int ERROR = 4;
    public static final int CANCEL = 8;
    public static final Diagnostic OK_INSTANCE = new BasicDiagnostic(0, "org.eclipse.emf.common", 0, CommonPlugin.INSTANCE.getString("_UI_OK_diagnostic_0"), null);
    public static final Diagnostic CANCEL_INSTANCE = new BasicDiagnostic(8, "org.eclipse.emf.common", 0, CommonPlugin.INSTANCE.getString("_UI_Cancel_diagnostic_0"), null);

    public int getSeverity();

    public String getMessage();

    public String getSource();

    public int getCode();

    public Throwable getException();

    public List<?> getData();

    public List<Diagnostic> getChildren();
}

