/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Dictionary;
import java.util.Map;
import org.eclipse.osgi.internal.resolver.StateObjectFactoryImpl;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.osgi.framework.BundleException;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface StateObjectFactory {
    public static final StateObjectFactory defaultFactory = new StateObjectFactoryImpl();

    public State createState();

    public State createState(boolean var1);

    public State createState(State var1);

    public BundleDescription createBundleDescription(long var1, String var3, Version var4, String var5, BundleSpecification[] var6, HostSpecification var7, ImportPackageSpecification[] var8, ExportPackageDescription[] var9, String[] var10, boolean var11);

    public BundleDescription createBundleDescription(long var1, String var3, Version var4, String var5, BundleSpecification[] var6, HostSpecification var7, ImportPackageSpecification[] var8, ExportPackageDescription[] var9, String[] var10, boolean var11, boolean var12, boolean var13, String var14, String var15, GenericSpecification[] var16, GenericDescription[] var17);

    public BundleDescription createBundleDescription(long var1, String var3, Version var4, String var5, BundleSpecification[] var6, HostSpecification var7, ImportPackageSpecification[] var8, ExportPackageDescription[] var9, boolean var10, boolean var11, boolean var12, String var13, String[] var14, GenericSpecification[] var15, GenericDescription[] var16);

    public BundleDescription createBundleDescription(long var1, String var3, Version var4, String var5, BundleSpecification[] var6, HostSpecification var7, ImportPackageSpecification[] var8, ExportPackageDescription[] var9, boolean var10, boolean var11, boolean var12, String var13, String[] var14, GenericSpecification[] var15, GenericDescription[] var16, NativeCodeSpecification var17);

    public BundleDescription createBundleDescription(State var1, Dictionary<String, String> var2, String var3, long var4) throws BundleException;

    public BundleDescription createBundleDescription(Dictionary<String, String> var1, String var2, long var3) throws BundleException;

    public BundleDescription createBundleDescription(BundleDescription var1);

    public BundleSpecification createBundleSpecification(String var1, VersionRange var2, boolean var3, boolean var4);

    public BundleSpecification createBundleSpecification(BundleSpecification var1);

    public HostSpecification createHostSpecification(String var1, VersionRange var2);

    public HostSpecification createHostSpecification(HostSpecification var1);

    public ImportPackageSpecification createImportPackageSpecification(String var1, VersionRange var2, String var3, VersionRange var4, Map<String, ?> var5, Map<String, ?> var6, BundleDescription var7);

    public ImportPackageSpecification createImportPackageSpecification(ImportPackageSpecification var1);

    public ExportPackageDescription createExportPackageDescription(String var1, Version var2, Map<String, ?> var3, Map<String, ?> var4, boolean var5, BundleDescription var6);

    public GenericDescription createGenericDescription(String var1, String var2, Version var3, Map<String, ?> var4);

    public GenericDescription createGenericDescription(String var1, Map<String, ?> var2, Map<String, String> var3, BundleDescription var4);

    public GenericSpecification createGenericSpecification(String var1, String var2, String var3, boolean var4, boolean var5) throws InvalidSyntaxException;

    public NativeCodeSpecification createNativeCodeSpecification(NativeCodeDescription[] var1, boolean var2);

    public NativeCodeDescription createNativeCodeDescription(String[] var1, String[] var2, String[] var3, VersionRange[] var4, String[] var5, String var6) throws InvalidSyntaxException;

    public ExportPackageDescription createExportPackageDescription(ExportPackageDescription var1);

    public void writeState(State var1, OutputStream var2) throws IOException;

    public void writeState(State var1, DataOutputStream var2) throws IOException;

    public void writeState(State var1, File var2) throws IOException;

    public State readState(InputStream var1) throws IOException;

    public State readState(DataInputStream var1) throws IOException;

    public State readState(File var1) throws IOException;
}

