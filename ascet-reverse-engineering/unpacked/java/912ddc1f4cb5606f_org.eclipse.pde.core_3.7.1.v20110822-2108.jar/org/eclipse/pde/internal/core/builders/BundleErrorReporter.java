/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragment
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.launching.IVMInstall
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironment
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.ResolverError
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.service.resolver.VersionConstraint
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.builders;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IFragmentModel;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.AbstractNLModel;
import org.eclipse.pde.internal.core.ICoreConstants;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.IHeader;
import org.eclipse.pde.internal.core.builders.JarManifestErrorReporter;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.search.PluginJavaSearchUtil;
import org.eclipse.pde.internal.core.util.IdUtil;
import org.eclipse.pde.internal.core.util.ManifestUtils;
import org.eclipse.pde.internal.core.util.PDEJavaHelper;
import org.eclipse.pde.internal.core.util.VersionUtil;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.Version;

public class BundleErrorReporter
extends JarManifestErrorReporter {
    private boolean fOsgiR4;
    private IPluginModelBase fModel;
    private Set fProjectPackages;

    public BundleErrorReporter(IFile file) {
        super(file);
    }

    public void validateContent(IProgressMonitor monitor) {
        super.validateContent(monitor);
        if (this.fHeaders == null || this.getErrorCount() > 0) {
            return;
        }
        this.fModel = PluginRegistry.findModel(this.fProject);
        if (this.fModel == null || !this.validateBundleSymbolicName()) {
            return;
        }
        this.validateFragmentHost();
        this.validateBundleVersion();
        this.validateRequiredExecutionEnvironment();
        this.validateEclipsePlatformFilter();
        this.validateBundleActivator();
        this.validateBundleClasspath();
        this.validateRequireBundle(monitor);
        this.validateImportPackage(monitor);
        this.validateExportPackage(monitor);
        this.validateExportPackages();
        this.validateAutoStart();
        this.validateLazyStart();
        this.validateBundleActivatorPolicy();
        this.validateExtensibleAPI();
        this.validateTranslatableHeaders();
        this.validateImportExportServices();
        this.validateBundleLocalization();
        this.validateProvidePackage();
        this.validateEclipseBundleShape();
    }

    private boolean validateBundleManifestVersion() {
        String version;
        IHeader header = this.getHeader("Bundle-ManifestVersion");
        if (header != null && !(this.fOsgiR4 = "2".equals(version = header.getValue())) && !"1".equals(version)) {
            this.report(PDECoreMessages.BundleErrorReporter_illegalManifestVersion, header.getLineNumber() + 1, 0, "fatal");
            return false;
        }
        return true;
    }

    private void validateExportPackages() {
        IHeader header = this.getHeader("Export-Package");
        if (this.fModel instanceof IBundlePluginModelBase) {
            IBundlePluginModelBase bundleModel = (IBundlePluginModelBase)this.fModel;
            IBundle bundle = bundleModel.getBundleModel().getBundle();
            IManifestHeader bundleClasspathheader = bundle.getManifestHeader("Bundle-ClassPath");
            IPackageFragmentRoot[] roots = ManifestUtils.findPackageFragmentRoots(bundleClasspathheader, this.fProject);
            StringBuffer packages = new StringBuffer();
            int i = 0;
            while (i < roots.length) {
                try {
                    if (ManifestUtils.isImmediateRoot(roots[i])) {
                        IJavaElement[] javaElements = roots[i].getChildren();
                        int j = 0;
                        while (j < javaElements.length) {
                            if (javaElements[j] instanceof IPackageFragment) {
                                IPackageFragment fragment = (IPackageFragment)javaElements[j];
                                String name = fragment.getElementName();
                                if (name.length() == 0) {
                                    name = ".";
                                }
                                if ((fragment.containsJavaResources() || fragment.getNonJavaResources().length > 0) && !this.containsPackage(header, name)) {
                                    packages.append(name);
                                    if (j < javaElements.length - 1) {
                                        packages.append(",");
                                    }
                                }
                            }
                            ++j;
                        }
                    }
                }
                catch (JavaModelException javaModelException) {}
                ++i;
            }
            if (packages.toString().length() > 0) {
                IMarker marker = this.report(PDECoreMessages.BundleErrorReporter_missingPackagesInProject, header == null ? 1 : header.getLineNumber() + 1, "compilers.p.missing-packages", 4120, "");
                this.addMarkerAttribute(marker, "packages", packages.toString());
            }
        }
    }

    private boolean validateBundleSymbolicName() {
        String id;
        IHeader header = this.validateRequiredHeader("Bundle-SymbolicName");
        if (header == null) {
            return false;
        }
        ManifestElement[] elements = header.getElements();
        String string = id = elements.length > 0 ? elements[0].getValue() : null;
        if (id == null || id.length() == 0) {
            this.report(PDECoreMessages.BundleErrorReporter_NoSymbolicName, header.getLineNumber() + 1, 0, "fatal");
            return false;
        }
        if (!this.validateBundleManifestVersion()) {
            return false;
        }
        this.validatePluginId(header, id);
        this.validateSingleton(header, elements[0]);
        return true;
    }

    private boolean validatePluginId(IHeader header, String value) {
        if (!IdUtil.isValidCompositeID3_0(value)) {
            String message = PDECoreMessages.BundleErrorReporter_InvalidSymbolicName;
            this.report(message, this.getLine(header, value), 0, "fatal");
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void validateSingleton(IHeader header, ManifestElement element) {
        boolean hasExtensions;
        String singletonAttr = element.getAttribute("singleton");
        String singletonDir = element.getDirective("singleton");
        IPluginBase base = this.fModel.getPluginBase();
        boolean bl = hasExtensions = base != null && PDEProject.getPluginXml(this.fProject).exists();
        if (hasExtensions) {
            if (TargetPlatformHelper.getTargetVersion() >= 3.1) {
                if (!"true".equals(singletonDir)) {
                    if (!"true".equals(singletonAttr)) {
                        String message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_singletonRequired, (Object)"singleton");
                        this.report(message, header.getLineNumber() + 1, 0, 4099, "fatal");
                        return;
                    }
                    if (this.isCheckDeprecated() && this.fOsgiR4) {
                        String message = PDECoreMessages.BundleErrorReporter_deprecated_attribute_singleton;
                        this.report(message, this.getLine(header, "singleton="), "compilers.p.deprecated", 4099, "deprecation");
                        return;
                    }
                }
            } else if (!"true".equals(singletonAttr)) {
                String message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_singletonAttrRequired, (Object)"singleton");
                this.report(message, header.getLineNumber() + 1, 0, 4100, "");
                return;
            }
        }
        if (this.fOsgiR4) {
            if (singletonAttr != null && this.isCheckDeprecated()) {
                String message = PDECoreMessages.BundleErrorReporter_deprecated_attribute_singleton;
                this.report(message, this.getLine(header, "singleton="), "compilers.p.deprecated", 4099, "");
            }
        } else if (singletonDir != null && this.isCheckDeprecated()) {
            String message = PDECoreMessages.BundleErrorReporter_unsupportedSingletonDirective;
            this.report(message, this.getLine(header, "singleton:="), "compilers.p.deprecated", 4113, "");
        }
        this.validateBooleanAttributeValue(header, element, "singleton");
        this.validateBooleanDirectiveValue(header, element, "singleton");
    }

    private void validateFragmentHost() {
        IPluginModelBase model;
        IHeader header = this.getHeader("Fragment-Host");
        if (header == null) {
            if (this.isCheckNoRequiredAttr() && PDEProject.getFragmentXml(this.fProject).exists()) {
                this.report(PDECoreMessages.BundleErrorReporter_HostNeeded, 1, "compilers.p.no-required-att", "fatal");
            }
            return;
        }
        if (header.getElements().length == 0) {
            if (this.isCheckNoRequiredAttr()) {
                this.report(PDECoreMessages.BundleErrorReporter_HostNeeded, 1, "compilers.p.no-required-att", "fatal");
            }
            return;
        }
        if (!this.isCheckUnresolvedImports()) {
            return;
        }
        BundleDescription desc = this.fModel.getBundleDescription();
        if (desc == null) {
            ManifestElement[] elems = header.getElements();
            if (elems.length > 0 && !VersionUtil.validateVersionRange(elems[0].getAttribute("bundle-version")).isOK()) {
                int line = this.getLine(header, header.getValue());
                this.report(PDECoreMessages.BundleErrorReporter_InvalidFormatInBundleVersion, line, 0, "fatal");
            }
            return;
        }
        HostSpecification host = desc.getHost();
        if (host == null) {
            return;
        }
        String name = host.getName();
        if (host.getSupplier() == null) {
            boolean missingHost = false;
            ResolverError[] errors = desc.getContainingState().getResolverErrors(desc);
            int i = 0;
            while (i < errors.length) {
                if (errors[i].getType() == 4) {
                    missingHost = true;
                    break;
                }
                ++i;
            }
            if (missingHost) {
                BundleDescription[] suppliers = desc.getContainingState().getBundles(name);
                boolean resolved = true;
                int i2 = 0;
                while (i2 < suppliers.length) {
                    if (suppliers[i2].getHost() == null) {
                        if (suppliers[i2].isResolved()) {
                            Version version = suppliers[i2].getVersion();
                            VersionRange range = host.getVersionRange();
                            if (!range.isIncluded(version)) {
                                String versionRange = host.getVersionRange().toString();
                                this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_BundleRangeInvalidInBundleVersion, (Object)versionRange), this.getLine(header, versionRange), "compilers.p.unresolved-import", "fatal");
                                return;
                            }
                        } else {
                            resolved = false;
                        }
                    }
                    ++i2;
                }
                if (!resolved) {
                    this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_unresolvedHost, (Object)name), this.getLine(header, name), "compilers.p.unresolved-import", "fatal");
                    return;
                }
            }
        }
        if ((model = PluginRegistry.findModel(name)) == null || model instanceof IFragmentModel || !model.isEnabled()) {
            this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_HostNotExistPDE, (Object)name), this.getLine(header, name), "compilers.p.unresolved-import", "fatal");
        }
    }

    private void validateBundleVersion() {
        IHeader header = this.validateRequiredHeader("Bundle-Version");
        if (header == null) {
            return;
        }
        IStatus status = VersionUtil.validateVersion(header.getValue());
        if (!status.isOK()) {
            int line = this.getLine(header, header.getValue());
            this.report(status.getMessage(), line, 0, "fatal");
        }
    }

    private void validateRequiredExecutionEnvironment() {
        int sev = CompilerFlags.getFlag(this.fProject, "compilers.incompatible-environment");
        if (sev == 2) {
            return;
        }
        BundleDescription desc = this.fModel.getBundleDescription();
        if (desc == null) {
            return;
        }
        try {
            if (!this.fProject.hasNature("org.eclipse.jdt.core.javanature")) {
                return;
            }
        }
        catch (CoreException coreException) {
            return;
        }
        String[] bundleEnvs = desc.getExecutionEnvironments();
        if (bundleEnvs == null || bundleEnvs.length == 0) {
            IJavaProject javaProject = JavaCore.create((IProject)this.fProject);
            if (javaProject.exists()) {
                try {
                    IClasspathEntry[] entries = javaProject.getRawClasspath();
                    int i = 0;
                    while (i < entries.length) {
                        if (entries[i].getEntryKind() == 5) {
                            String eeId;
                            IPath currentPath = entries[i].getPath();
                            if (JavaRuntime.newDefaultJREContainerPath().matchingFirstSegments(currentPath) > 0 && (eeId = JavaRuntime.getExecutionEnvironmentId((IPath)currentPath)) != null) {
                                IMarker marker = this.report(PDECoreMessages.BundleErrorReporter_noExecutionEnvironmentSet, 1, sev, 4128, "ee");
                                this.addMarkerAttribute(marker, "ee_id", eeId);
                                return;
                            }
                        }
                        ++i;
                    }
                }
                catch (JavaModelException e) {
                    PDECore.log(e);
                }
            }
            IExecutionEnvironment[] systemEnvs = JavaRuntime.getExecutionEnvironmentsManager().getExecutionEnvironments();
            IVMInstall vm = JavaRuntime.getDefaultVMInstall();
            if (javaProject.exists()) {
                try {
                    vm = JavaRuntime.getVMInstall((IJavaProject)javaProject);
                }
                catch (CoreException e) {
                    PDECore.log(e);
                }
            }
            if (vm != null) {
                int i = 0;
                while (i < systemEnvs.length) {
                    if (systemEnvs[i].isStrictlyCompatible(vm)) {
                        IMarker marker = this.report(PDECoreMessages.BundleErrorReporter_noExecutionEnvironmentSet, 1, sev, 4128, "ee");
                        this.addMarkerAttribute(marker, "ee_id", systemEnvs[i].getId());
                        break;
                    }
                    ++i;
                }
            }
            return;
        }
        IHeader header = this.getHeader("Bundle-RequiredExecutionEnvironment");
        if (header == null) {
            return;
        }
        IExecutionEnvironment env = JavaRuntime.getExecutionEnvironmentsManager().getEnvironment(bundleEnvs[0]);
        if (env != null) {
            IJavaProject jproject = JavaCore.create((IProject)this.fProject);
            try {
                IClasspathEntry[] entries = jproject.getRawClasspath();
                int i = 0;
                while (i < entries.length) {
                    if (entries[i].getEntryKind() == 5) {
                        IVMInstall vm;
                        IPath validPath;
                        IPath currentPath = entries[i].getPath();
                        if (!(JavaRuntime.newDefaultJREContainerPath().matchingFirstSegments(currentPath) == 0 || (validPath = JavaRuntime.newJREContainerPath((IExecutionEnvironment)env)).equals((Object)currentPath) || (vm = JavaRuntime.getVMInstall((IPath)currentPath)) != null && env.isStrictlyCompatible(vm))) {
                            this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_reqExecEnv_conflict, (Object)bundleEnvs[0]), this.getLine(header, bundleEnvs[0]), sev, 4115, "ee");
                        }
                    }
                    ++i;
                }
            }
            catch (JavaModelException javaModelException) {}
        }
        IExecutionEnvironment[] systemEnvs = JavaRuntime.getExecutionEnvironmentsManager().getExecutionEnvironments();
        int i = 0;
        while (i < bundleEnvs.length) {
            boolean found = false;
            int j = 0;
            while (j < systemEnvs.length) {
                if (bundleEnvs[i].equals(systemEnvs[j].getId())) {
                    found = true;
                    break;
                }
                ++j;
            }
            if (!found) {
                this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_reqExecEnv_unknown, (Object)bundleEnvs[i]), this.getLine(header, bundleEnvs[i]), sev, 4116, "ee");
                break;
            }
            ++i;
        }
    }

    private void validateEclipseBundleShape() {
        IHeader header = this.getHeader("Eclipse-BundleShape");
        if (header == null) {
            return;
        }
        String value = header.getValue();
        if (value != null) {
            this.validateHeaderValue(header, ICoreConstants.SHAPE_VALUES);
        }
    }

    private void validateEclipsePlatformFilter() {
        IHeader header = this.getHeader("Eclipse-PlatformFilter");
        if (header == null) {
            return;
        }
        try {
            PDECore.getDefault().getBundleContext().createFilter(header.getValue());
            int severity = CompilerFlags.getFlag(this.fProject, "compilers.incompatible-environment");
            if (severity == 2) {
                return;
            }
            BundleDescription desc = this.fModel.getBundleDescription();
            if (desc != null && !desc.isResolved()) {
                ResolverError[] errors = desc.getContainingState().getResolverErrors(desc);
                int i = 0;
                while (i < errors.length) {
                    if (errors[i].getType() == 8192) {
                        this.report(PDECoreMessages.BundleErrorReporter_badFilter, header.getLineNumber() + 1, severity, "");
                    }
                    ++i;
                }
            }
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            this.report(PDECoreMessages.BundleErrorReporter_invalidFilterSyntax, header.getLineNumber() + 1, 0, "fatal");
        }
    }

    private void validateBundleActivator() {
        IHeader header = this.getHeader("Bundle-Activator");
        if (header == null) {
            return;
        }
        String activator = header.getValue();
        BundleDescription desc = this.fModel.getBundleDescription();
        if (desc != null && desc.getHost() != null) {
            this.report(PDECoreMessages.BundleErrorReporter_fragmentActivator, header.getLineNumber() + 1, 0, "fatal");
            return;
        }
        if (this.isCheckUnknownClass()) {
            try {
                IJavaProject javaProject;
                if (this.fProject.hasNature("org.eclipse.jdt.core.javanature") && !PDEJavaHelper.isOnClasspath(activator, javaProject = JavaCore.create((IProject)this.fProject))) {
                    this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_NoExist, (Object)activator), this.getLine(header, activator), "compilers.p.unknown-class", 4112, "fatal");
                }
            }
            catch (CoreException coreException) {}
        }
    }

    private void validateBundleClasspath() {
        IHeader header = this.getHeader("Bundle-ClassPath");
        if (header != null && header.getElements().length == 0) {
            this.report(PDECoreMessages.BundleErrorReporter_ClasspathNotEmpty, header.getLineNumber() + 1, 0, "fatal");
        }
    }

    private void validateRequireBundle(IProgressMonitor monitor) {
        if (!this.isCheckUnresolvedImports()) {
            return;
        }
        IHeader header = this.getHeader("Require-Bundle");
        if (header == null) {
            return;
        }
        ManifestElement[] required = header.getElements();
        BundleDescription desc = this.fModel.getBundleDescription();
        if (desc == null) {
            int i = 0;
            while (i < required.length) {
                this.validateBundleVersionAttribute(header, required[i]);
                ++i;
            }
            return;
        }
        BundleSpecification[] specs = desc.getRequiredBundles();
        if (specs.length != required.length) {
            specs = null;
        }
        int i = 0;
        while (i < required.length) {
            block12: {
                this.checkCanceled(monitor);
                String bundleID = required[i].getValue();
                this.validateBundleVersionAttribute(header, required[i]);
                this.validateVisibilityDirective(header, required[i]);
                this.validateReprovideAttribute(header, required[i]);
                this.validateResolutionDirective(header, required[i]);
                this.validateOptionalAttribute(header, required[i]);
                this.validateFragmentHost(header, required[i]);
                boolean optional = this.isOptional(required[i]);
                int severity = this.getRequireBundleSeverity(required[i], optional);
                if (specs != null && specs[i].getSupplier() == null) {
                    if (desc.getContainingState().getBundle(specs[i].getName(), null) == null) {
                        IMarker marker = this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_NotExistPDE, (Object)bundleID), this.getPackageLine(header, required[i]), severity, 4104, "fatal");
                        try {
                            if (marker == null) break block12;
                            marker.setAttribute("bundleId", (Object)required[i].getValue());
                            if (optional) {
                                marker.setAttribute("optional", true);
                            }
                        }
                        catch (CoreException coreException) {}
                    } else {
                        this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_BundleRangeInvalidInBundleVersion, (Object)(String.valueOf(bundleID) + ": " + specs[i].getVersionRange())), this.getPackageLine(header, required[i]), severity, "fatal");
                    }
                }
            }
            ++i;
        }
    }

    private void validateBundleVersionAttribute(IHeader header, ManifestElement element) {
        String versionRange = element.getAttribute("bundle-version");
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.missing-version-require-bundle");
        if (severity != 2 && versionRange == null) {
            this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_MissingVersion, (Object)element.getValue()), this.getPackageLine(header, element), severity, "");
        }
        if (versionRange != null && !VersionUtil.validateVersionRange(versionRange).isOK()) {
            this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_InvalidFormatInBundleVersion, (Object)element.getValue()), this.getPackageLine(header, element), 0, "fatal");
        }
    }

    private void validateVisibilityDirective(IHeader header, ManifestElement element) {
        String visibility = element.getDirective("visibility");
        if (visibility != null) {
            this.validateDirectiveValue(header, element, "visibility", new String[]{"private", "reexport"});
        }
    }

    private void validateReprovideAttribute(IHeader header, ManifestElement element) {
        String rexport = element.getAttribute("reprovide");
        if (rexport != null) {
            this.validateBooleanAttributeValue(header, element, "reprovide");
            if (this.fOsgiR4 && this.isCheckDeprecated()) {
                String message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_deprecated_attribute_reprovide, (Object)"reprovide");
                this.report(message, this.getLine(header, "reprovide="), "compilers.p.deprecated", "deprecation");
            }
        }
    }

    private boolean isOptional(ManifestElement element) {
        return "optional".equals(element.getDirective("resolution")) || "true".equals(element.getAttribute("optional"));
    }

    private int getRequireBundleSeverity(ManifestElement requireBundleElement, boolean optional) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unresolved-import");
        if (optional && severity != 2) {
            ++severity;
        }
        return severity;
    }

    private void validateResolutionDirective(IHeader header, ManifestElement requireBundleElement) {
        String resolution = requireBundleElement.getDirective("resolution");
        if (resolution != null) {
            this.validateDirectiveValue(header, requireBundleElement, "resolution", new String[]{"mandatory", "optional"});
        }
    }

    private void validateOptionalAttribute(IHeader header, ManifestElement element) {
        String rexport = element.getAttribute("optional");
        if (rexport != null) {
            this.validateBooleanAttributeValue(header, element, "optional");
            if (this.fOsgiR4 && this.isCheckDeprecated()) {
                this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_deprecated_attribute_optional, (Object)"optional"), this.getLine(header, "optional="), "compilers.p.deprecated", "deprecation");
            }
        }
    }

    private void validateImportPackage(IProgressMonitor monitor) {
        IHeader header = this.getHeader("Import-Package");
        if (header == null) {
            return;
        }
        BundleDescription desc = this.fModel.getBundleDescription();
        if (desc == null) {
            ManifestElement[] elements = header.getElements();
            int i = 0;
            while (i < elements.length) {
                this.validateSpecificationVersionAttribute(header, elements[i]);
                this.validateImportPackageVersion(header, elements[i]);
                ++i;
            }
            return;
        }
        boolean hasUnresolved = false;
        VersionConstraint[] constraints = desc.getContainingState().getStateHelper().getUnsatisfiedConstraints(desc);
        int i = 0;
        while (i < constraints.length) {
            if (constraints[i] instanceof ImportPackageSpecification) {
                hasUnresolved = true;
                break;
            }
            ++i;
        }
        HashMap exported = this.getAvailableExportedPackages(desc.getContainingState());
        ImportPackageSpecification[] imports = desc.getImportPackages();
        if (desc.hasDynamicImports()) {
            ArrayList<ImportPackageSpecification> staticImportsList = new ArrayList<ImportPackageSpecification>();
            int i2 = 0;
            while (i2 < imports.length) {
                if (!imports[i2].getDirective("resolution").equals("dynamic")) {
                    staticImportsList.add(imports[i2]);
                }
                ++i2;
            }
            imports = staticImportsList.toArray(new ImportPackageSpecification[staticImportsList.size()]);
        }
        ManifestElement[] elements = header.getElements();
        int index = 0;
        int i3 = 0;
        while (i3 < elements.length) {
            this.checkCanceled(monitor);
            this.validateSpecificationVersionAttribute(header, elements[i3]);
            this.validateResolutionDirective(header, elements[i3]);
            this.validateImportPackageVersion(header, elements[i3]);
            if (hasUnresolved) {
                int length = elements[i3].getValueComponents().length;
                int j = 0;
                while (j < length) {
                    IHeader jreHeader;
                    ImportPackageSpecification importSpec;
                    String name;
                    if (!(!(name = (importSpec = imports[index++]).getName()).equals("java") && !name.startsWith("java.") || (jreHeader = this.getHeader("Eclipse-JREBundle")) != null && "true".equals(jreHeader.getValue()))) {
                        this.report(PDECoreMessages.BundleErrorReporter_importNoJRE, this.getPackageLine(header, elements[i3]), 0, 4098, "fatal");
                    } else if (!importSpec.isResolved() && this.isCheckUnresolvedImports()) {
                        boolean optional = this.isOptional(elements[i3]);
                        int severity = this.getRequireBundleSeverity(elements[i3], optional);
                        ExportPackageDescription export = (ExportPackageDescription)exported.get(name);
                        if (export != null) {
                            if (export.getSupplier().isResolved()) {
                                Version version = export.getVersion();
                                VersionRange range = importSpec.getVersionRange();
                                if (range != null && !range.isIncluded(version)) {
                                    this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_unsatisfiedConstraint, (Object)importSpec.toString()), this.getPackageLine(header, elements[i3]), severity, "fatal");
                                }
                            } else {
                                this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_unresolvedExporter, (Object[])new String[]{export.getSupplier().getSymbolicName(), name}), this.getPackageLine(header, elements[i3]), severity, "");
                            }
                        } else {
                            IMarker marker = this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_PackageNotExported, (Object)name), this.getPackageLine(header, elements[i3]), severity, 4103, "fatal");
                            try {
                                if (marker != null) {
                                    marker.setAttribute("packageName", (Object)name);
                                    if (optional) {
                                        marker.setAttribute("optional", true);
                                    }
                                }
                            }
                            catch (CoreException coreException) {}
                        }
                    }
                    ++j;
                }
            }
            ++i3;
        }
    }

    private HashMap getAvailableExportedPackages(State state) {
        BundleDescription[] bundles = state.getBundles();
        HashMap<String, ExportPackageDescription> exported = new HashMap<String, ExportPackageDescription>();
        int i = 0;
        while (i < bundles.length) {
            ExportPackageDescription[] exports = bundles[i].getExportPackages();
            int j = 0;
            while (j < exports.length) {
                String name = exports[j].getName();
                if (exported.containsKey(name)) {
                    if (exports[j].getSupplier().isResolved()) {
                        exported.put(name, exports[j]);
                    }
                } else {
                    exported.put(name, exports[j]);
                }
                ++j;
            }
            ++i;
        }
        return exported;
    }

    protected void validateExportPackage(IProgressMonitor monitor) {
        IHeader header = this.getHeader("Export-Package");
        if (header == null) {
            return;
        }
        String message = null;
        ManifestElement[] elements = header.getElements();
        int i = 0;
        while (i < elements.length) {
            this.checkCanceled(monitor);
            this.validateExportPackageVersion(header, elements[i]);
            this.validateSpecificationVersionAttribute(header, elements[i]);
            this.validateX_InternalDirective(header, elements[i]);
            this.validateX_FriendsDirective(header, elements[i]);
            String[] valueComps = elements[i].getValueComponents();
            int j = 0;
            while (j < valueComps.length) {
                block11: {
                    String name;
                    block10: {
                        block9: {
                            name = valueComps[j];
                            if (!name.equals("java") && !name.startsWith("java.")) break block9;
                            IHeader jreHeader = this.getHeader("Eclipse-JREBundle");
                            if (jreHeader == null || !"true".equals(jreHeader.getValue())) {
                                message = PDECoreMessages.BundleErrorReporter_exportNoJRE;
                                this.report(message, this.getPackageLine(header, elements[i]), 0, 4098, "fatal");
                            }
                            break block10;
                        }
                        if (".".equals(name.trim())) break block11;
                    }
                    if (this.isCheckUnresolvedImports() && !this.getExportedPackages().contains(name) && !this.fProject.getFolder(name.replace('.', '/')).exists()) {
                        message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_NotExistInProject, (Object)name);
                        IMarker marker = this.report(message, this.getPackageLine(header, elements[i]), "compilers.p.unresolved-import", 4102, "");
                        this.addMarkerAttribute(marker, "packageName", name);
                    }
                }
                ++j;
            }
            ++i;
        }
    }

    private boolean containsPackage(IHeader header, String name) {
        if (header != null) {
            ManifestElement[] elements = header.getElements();
            int i = 0;
            while (i < elements.length) {
                if (elements[i].getValue().equals(name)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    private Set getExportedPackages() {
        if (this.fProjectPackages == null) {
            this.fProjectPackages = new HashSet();
            this.addProjectPackages(this.fProject);
            BundleDescription desc = this.fModel.getBundleDescription();
            if (desc != null) {
                HostSpecification host = desc.getHost();
                if (host != null) {
                    this.addHostPackages(host.getName());
                } else {
                    this.addFragmentPackages(desc.getFragments());
                }
            }
        }
        return this.fProjectPackages;
    }

    private void addHostPackages(String hostID) {
        IPluginModelBase model = PluginRegistry.findModel(hostID);
        if (model != null) {
            IResource resource = model.getUnderlyingResource();
            if (resource != null) {
                this.addProjectPackages(resource.getProject());
            } else {
                try {
                    if (this.fProject.hasNature("org.eclipse.jdt.core.javanature")) {
                        IPackageFragment[] packages = PluginJavaSearchUtil.collectPackageFragments(new IPluginModelBase[]{model}, JavaCore.create((IProject)this.fProject), false);
                        int i = 0;
                        while (i < packages.length) {
                            this.fProjectPackages.add(packages[i].getElementName());
                            ++i;
                        }
                    }
                }
                catch (CoreException coreException) {}
            }
        }
    }

    private void addFragmentPackages(BundleDescription[] fragments) {
        int i = 0;
        while (i < fragments.length) {
            IResource resource;
            String id = fragments[i].getSymbolicName();
            IPluginModelBase model = PluginRegistry.findModel(id);
            IResource iResource = resource = model instanceof IFragmentModel ? model.getUnderlyingResource() : null;
            if (resource != null) {
                this.addProjectPackages(resource.getProject());
            }
            ++i;
        }
    }

    private void addProjectPackages(IProject proj) {
        try {
            if (proj.hasNature("org.eclipse.jdt.core.javanature")) {
                IJavaProject jp = JavaCore.create((IProject)proj);
                IPackageFragmentRoot[] roots = jp.getPackageFragmentRoots();
                int i = 0;
                while (i < roots.length) {
                    if (roots[i].getKind() == 1 || roots[i].getKind() == 2 && !roots[i].isExternal()) {
                        IJavaElement[] children = roots[i].getChildren();
                        int j = 0;
                        while (j < children.length) {
                            IPackageFragment f = (IPackageFragment)children[j];
                            String name = f.getElementName();
                            if (name.equals("")) {
                                name = ".";
                            }
                            if (f.hasChildren() || f.getNonJavaResources().length > 0) {
                                this.fProjectPackages.add(name);
                            }
                            ++j;
                        }
                    }
                    ++i;
                }
            }
        }
        catch (CoreException coreException) {}
    }

    protected boolean isCheckDeprecated() {
        return CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated") != 2;
    }

    protected boolean isCheckNoRequiredAttr() {
        return CompilerFlags.getFlag(this.fProject, "compilers.p.no-required-att") != 2;
    }

    protected boolean isCheckUnknownClass() {
        return CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-class") != 2;
    }

    protected boolean isCheckUnresolvedImports() {
        return CompilerFlags.getFlag(this.fProject, "compilers.p.unresolved-import") != 2;
    }

    protected boolean isCheckMissingExportPackageVersion() {
        return CompilerFlags.getFlag(this.fProject, "compilers.p.missing-version-export-package") != 2;
    }

    protected boolean isCheckMissingImportPackageVersion() {
        return CompilerFlags.getFlag(this.fProject, "compilers.p.missing-version-import-package") != 2;
    }

    private void validateTranslatableHeaders() {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.not-externalized-att");
        if (severity == 2) {
            return;
        }
        int i = 0;
        while (i < ICoreConstants.TRANSLATABLE_HEADERS.length) {
            IHeader header = this.getHeader(ICoreConstants.TRANSLATABLE_HEADERS[i]);
            if (header != null) {
                NLResourceHelper helper;
                String value = header.getValue();
                if (!value.startsWith("%")) {
                    this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_non_ext_attribute, (Object)header.getName()), this.getLine(header, value), severity, 12290, header.getName(), "nls");
                } else if (this.fModel instanceof AbstractNLModel && ((helper = ((AbstractNLModel)((Object)this.fModel)).getNLResourceHelper()) == null || !helper.resourceExists(value))) {
                    this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_key_not_found, (Object)value.substring(1)), this.getLine(header, value), severity, "nls");
                }
            }
            ++i;
        }
    }

    private void validateSpecificationVersionAttribute(IHeader header, ManifestElement element) {
        String version = element.getAttribute("specification-version");
        IStatus status = VersionUtil.validateVersion(version);
        if (!status.isOK()) {
            this.report(status.getMessage(), this.getPackageLine(header, element), 0, "fatal");
        }
        if (this.isCheckDeprecated() && this.fOsgiR4 && version != null) {
            this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_deprecated_attribute_specification_version, (Object)"specification-version"), this.getPackageLine(header, element), "compilers.p.deprecated", "deprecation");
        }
    }

    private void validateImportPackageVersion(IHeader header, ManifestElement element) {
        String version = element.getAttribute("version");
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.missing-version-import-package");
        if (severity != 2 && version == null) {
            this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_MissingVersion, (Object)element.getValue()), this.getPackageLine(header, element), severity, "");
        }
        this.validateVersionAttribute(header, element, true);
    }

    private void validateExportPackageVersion(IHeader header, ManifestElement element) {
        String version = element.getAttribute("version");
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.missing-version-export-package");
        if (severity != 2 && version == null) {
            this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_MissingVersion, (Object)element.getValue()), this.getPackageLine(header, element), severity, "");
        }
        this.validateVersionAttribute(header, element, false);
    }

    private void validateVersionAttribute(IHeader header, ManifestElement element, boolean range) {
        String version = element.getAttribute("version");
        if (version != null) {
            IStatus status;
            IStatus iStatus = status = range ? VersionUtil.validateVersionRange(version) : VersionUtil.validateVersion(version);
            if (!status.isOK()) {
                this.report(status.getMessage(), this.getPackageLine(header, element), 0, "fatal");
            }
        }
    }

    private void validateX_InternalDirective(IHeader header, ManifestElement element) {
        String internal = element.getDirective("x-internal");
        if (internal == null) {
            return;
        }
        int i = 0;
        while (i < BOOLEAN_VALUES.length) {
            if (BOOLEAN_VALUES[i].equals(internal)) {
                return;
            }
            ++i;
        }
        String message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_dir_value, (Object[])new String[]{internal, "x-internal"});
        this.report(message, this.getPackageLine(header, element), 0, "fatal");
    }

    private void validateX_FriendsDirective(IHeader header, ManifestElement element) {
        String friends = element.getDirective("x-friends");
        String internal = element.getDirective("x-internal");
        if (friends != null && internal != null) {
            String message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_directive_hasNoEffectWith_, (Object[])new String[]{"x-friends", "x-internal"});
            IMarker marker = this.report(message, this.getPackageLine(header, element), 1, 4114, "");
            this.addMarkerAttribute(marker, "packageName", element.getValue());
        }
    }

    private void validateBundleActivatorPolicy() {
        IHeader header = this.getHeader("Bundle-ActivationPolicy");
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
        if (header == null) {
            return;
        }
        if (TargetPlatformHelper.getTargetVersion() >= 3.3) {
            this.validateHeaderValue(header, new String[]{"lazy"});
        } else if (severity != 2 && !this.containsValidActivationHeader()) {
            this.report(PDECoreMessages.BundleErrorReporter_bundleActivationPolicy_unsupported, header.getLineNumber() + 1, severity, -1, "");
        }
    }

    private void validateAutoStart() {
        IHeader header = this.getHeader("Eclipse-AutoStart");
        if (!this.validateStartHeader(header)) {
            return;
        }
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
        if (severity != 2 && TargetPlatformHelper.getTargetVersion() >= 3.2 && !this.containsValidActivationHeader()) {
            int line = header.getLineNumber();
            String message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_startHeader_autoStartDeprecated, (Object[])new Object[]{"Eclipse-AutoStart", this.getCurrentActivationHeader()});
            IMarker marker = this.report(message, line + 1, severity, 4097, "deprecation");
            if (marker != null) {
                try {
                    marker.setAttribute("header", (Object)"Eclipse-AutoStart");
                    ManifestElement elem = header.getElements()[0];
                    boolean unnecessary = elem.getValue().equals("false") && elem.getAttribute("excludes") == null;
                    marker.setAttribute("canAdd", !unnecessary);
                }
                catch (CoreException coreException) {}
            }
        }
    }

    private void validateLazyStart() {
        IHeader header = this.getHeader("Eclipse-LazyStart");
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
        this.validateStartHeader(header);
        if (header != null) {
            if (severity == 2 || this.containsValidActivationHeader()) {
                return;
            }
            double targetVersion = TargetPlatformHelper.getTargetVersion();
            if (targetVersion < 3.2) {
                this.report(PDECoreMessages.BundleErrorReporter_lazyStart_unsupported, header.getLineNumber() + 1, severity, -1, "");
            } else if (targetVersion > 3.3) {
                int line = header.getLineNumber();
                String message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_startHeader_autoStartDeprecated, (Object[])new Object[]{"Eclipse-LazyStart", this.getCurrentActivationHeader()});
                IMarker marker = this.report(message, line + 1, severity, 4097, "deprecation");
                if (marker != null) {
                    try {
                        marker.setAttribute("header", (Object)"Eclipse-LazyStart");
                        ManifestElement elem = header.getElements()[0];
                        boolean unnecessary = elem.getValue().equals("false") && elem.getAttribute("excludes") == null;
                        marker.setAttribute("canAdd", !unnecessary);
                    }
                    catch (CoreException coreException) {}
                }
            }
        }
    }

    private boolean containsValidActivationHeader() {
        double targetVersion = TargetPlatformHelper.getTargetVersion();
        String header = targetVersion < 3.2 ? "Eclipse-AutoStart" : (targetVersion < 3.4 ? "Eclipse-LazyStart" : "Bundle-ActivationPolicy");
        return this.getHeader(header) != null;
    }

    private String getCurrentActivationHeader() {
        double targetVersion = TargetPlatformHelper.getTargetVersion();
        if (targetVersion < 3.2) {
            return "Eclipse-AutoStart";
        }
        if (targetVersion < 3.4) {
            return "Eclipse-LazyStart";
        }
        return "Bundle-ActivationPolicy";
    }

    private boolean validateStartHeader(IHeader header) {
        if (header == null) {
            return false;
        }
        this.validateBooleanValue(header);
        return this.exceptionsAttributesValid(header, header.getElements());
    }

    private boolean exceptionsAttributesValid(IHeader header, ManifestElement[] elements) {
        String key;
        if (elements == null || elements.length == 0) {
            return true;
        }
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-attribute");
        if (severity == 2) {
            return true;
        }
        Enumeration keys = elements[0].getKeys();
        if (keys != null && keys.hasMoreElements() && "exceptions".equals(key = (String)keys.nextElement())) {
            String[] values = elements[0].getAttributes(key);
            int i = 0;
            while (i < values.length) {
                StringTokenizer st = new StringTokenizer(values[i], ",");
                while (st.hasMoreTokens()) {
                    String name = st.nextToken().trim();
                    if (this.getExportedPackages().contains(name)) continue;
                    String message = NLS.bind((String)PDECoreMessages.BundleErrorReporter_NotExistInProject, (Object)name);
                    this.report(message, this.getLine(header, name), "compilers.p.unresolved-import", "");
                    return false;
                }
                ++i;
            }
        }
        return true;
    }

    private void validateExtensibleAPI() {
        IHeader header = this.getHeader("Eclipse-ExtensibleAPI");
        if (header != null) {
            this.validateBooleanValue(header);
        }
    }

    public void report(String message, int line, int severity, int problemID, String headerName, String category) {
        try {
            IMarker marker = this.report(message, line, severity, problemID, category);
            if (marker != null) {
                marker.setAttribute("xmlTree.locationPath", (Object)headerName);
            }
        }
        catch (CoreException coreException) {}
    }

    private void validateImportExportServices() {
        if (this.fOsgiR4) {
            int line;
            IHeader importHeader = this.getHeader("Import-Service");
            IHeader exportHeader = this.getHeader("Export-Service");
            int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
            if (severity == 2) {
                return;
            }
            if (importHeader != null) {
                line = importHeader.getLineNumber();
                this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_importexport_servicesDeprecated, (Object)"Import-Service"), line + 1, severity, 4117, "deprecation");
            }
            if (exportHeader != null) {
                line = exportHeader.getLineNumber();
                this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_importexport_servicesDeprecated, (Object)"Export-Service"), line + 1, severity, 4118, "deprecation");
            }
        }
    }

    private void validateBundleLocalization() {
        IHeader header = this.getHeader("Bundle-Localization");
        if (header == null) {
            return;
        }
        String location = header.getValue();
        String fileName = null;
        int index = location.lastIndexOf(47);
        if (index > 0) {
            fileName = location.substring(index + 1);
            location = location.substring(0, index);
        } else {
            fileName = location;
            location = new String();
        }
        IResource res = PDEProject.getBundleRoot(this.fProject).findMember(location);
        if (res == null || !(res instanceof IContainer)) {
            this.report(PDECoreMessages.BundleErrorReporter_localization_folder_not_exist, header.getLineNumber() + 1, CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-resource"), "");
            return;
        }
        IContainer folder = (IContainer)res;
        try {
            IResource[] children = folder.members();
            int i = 0;
            while (i < children.length) {
                String childName;
                if (children[i] instanceof IFile && (childName = children[i].getName()).endsWith(".properties") && childName.startsWith(fileName)) {
                    return;
                }
                ++i;
            }
        }
        catch (CoreException coreException) {}
        this.report(PDECoreMessages.BundleErrorReporter_localization_properties_file_not_exist, header.getLineNumber() + 1, CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-resource"), "");
    }

    private void validateFragmentHost(IHeader requireBundleHeader, ManifestElement element) {
        IHeader header = this.getHeader("Fragment-Host");
        if (header == null) {
            return;
        }
        ManifestElement[] elements = header.getElements();
        if (header != null && elements[0] != null && elements[0].getValue().equals(element.getValue())) {
            IMarker marker = this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_unecessaryDependencyDueToFragmentHost, (Object)element.getValue()), this.getPackageLine(requireBundleHeader, element), 1, 4119, "");
            this.addMarkerAttribute(marker, "bundleId", element.getValue());
        }
    }

    private void validateProvidePackage() {
        IHeader header = this.getHeader("Provide-Package");
        if (header == null) {
            return;
        }
        if (this.fOsgiR4 && this.isCheckDeprecated()) {
            this.report(PDECoreMessages.BundleErrorReporter_providePackageHeaderDeprecated, header.getLineNumber() + 1, "compilers.p.deprecated", 4121, "");
        }
    }

    private void addMarkerAttribute(IMarker marker, String attr, String value) {
        if (marker != null) {
            try {
                marker.setAttribute(attr, (Object)value);
            }
            catch (CoreException coreException) {}
        }
    }
}

