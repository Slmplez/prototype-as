/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.Resource$Diagnostic
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.util.TransactionUtil
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.resources.MarkerJob
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.internal.resource;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.resource.ExtendedResource;
import org.eclipse.sphinx.emf.resource.ExtendedResourceAdapterFactory;
import org.eclipse.sphinx.emf.resource.IXMLMarker;
import org.eclipse.sphinx.emf.resource.ProxyURIIntegrityException;
import org.eclipse.sphinx.emf.resource.XMLIntegrityException;
import org.eclipse.sphinx.emf.resource.XMLValidityException;
import org.eclipse.sphinx.emf.resource.XMLWellformednessException;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.resources.MarkerJob;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.xml.sax.SAXParseException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceProblemMarkerService {
    public static final String PROXY_URI_INTEGRITY_PROBLEM = String.valueOf(Activator.getPlugin().getSymbolicName()) + ".proxyuriintegrityproblemmarker";
    public static ResourceProblemMarkerService INSTANCE = new ResourceProblemMarkerService();

    private ResourceProblemMarkerService() {
    }

    public void updateProblemMarkers(Map<IFile, Exception> filesWithErrors, IProgressMonitor monitor) {
        Assert.isNotNull(filesWithErrors);
        if (!filesWithErrors.isEmpty() && Platform.isRunning()) {
            SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)filesWithErrors.size());
            for (IFile file : filesWithErrors.keySet()) {
                if (progress.isCanceled()) {
                    return;
                }
                try {
                    Exception error;
                    if (file.isAccessible()) {
                        MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, "org.eclipse.core.resources.problemmarker");
                        MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, IXMLMarker.XML_WELLFORMEDNESS_PROBLEM);
                        MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, IXMLMarker.XML_VALIDITY_PROBLEM);
                        MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, IXMLMarker.XML_INTEGRITY_PROBLEM);
                    }
                    if ((error = filesWithErrors.get(file)) instanceof XMIException) {
                        this.createProblemMarkerForDiagnostic(file, null, (Resource.Diagnostic)((XMIException)error), 2);
                    } else {
                        this.createProblemMarkerForException(file, error, 2);
                    }
                }
                catch (CoreException ex) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)((Object)ex));
                }
                progress.worked(1);
            }
            MarkerJob.INSTANCE.schedule();
        }
    }

    public void updateProblemMarkers(Resource resource, IProgressMonitor monitor) {
        if (resource != null) {
            this.updateProblemMarkers(Collections.singleton(resource), monitor);
        }
    }

    public void updateProblemMarkers(Collection<Resource> resources, IProgressMonitor monitor) {
        Assert.isNotNull(resources);
        if (!resources.isEmpty() && Platform.isRunning()) {
            HashMap<TransactionalEditingDomain, Collection<Resource>> resourcesToUpdate = new HashMap<TransactionalEditingDomain, Collection<Resource>>();
            for (Resource resource : resources) {
                TransactionalEditingDomain editingDomain = TransactionUtil.getEditingDomain((Resource)resource);
                HashSet<Resource> resourcesToUpdateInEditingDomain = (HashSet<Resource>)resourcesToUpdate.get(editingDomain);
                if (resourcesToUpdateInEditingDomain == null) {
                    resourcesToUpdateInEditingDomain = new HashSet<Resource>();
                    resourcesToUpdate.put(editingDomain, resourcesToUpdateInEditingDomain);
                }
                resourcesToUpdateInEditingDomain.add(resource);
            }
            SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)resourcesToUpdate.keySet().size());
            if (progress.isCanceled()) {
                return;
            }
            for (TransactionalEditingDomain editingDomain : resourcesToUpdate.keySet()) {
                this.updateProblemMarkersInEditingDomain(editingDomain, resourcesToUpdate, (IProgressMonitor)progress.newChild(1));
            }
            MarkerJob.INSTANCE.schedule();
        }
    }

    private void updateProblemMarkersInEditingDomain(final TransactionalEditingDomain editingDomain, final Map<TransactionalEditingDomain, Collection<Resource>> resourcesToUpdate, final IProgressMonitor monitor) {
        Assert.isNotNull(resourcesToUpdate);
        Runnable runnable = new Runnable(){

            public void run() {
                Collection resourcesToUpdateInEditingDomain = (Collection)resourcesToUpdate.get(editingDomain);
                SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)resourcesToUpdateInEditingDomain.size());
                if (progress.isCanceled()) {
                    throw new OperationCanceledException();
                }
                for (Resource resource : resourcesToUpdateInEditingDomain) {
                    IFile file = EcorePlatformUtil.getFile(resource);
                    if (file != null) {
                        ExtendedResource extendedResource;
                        if (file.isAccessible()) {
                            MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, "org.eclipse.core.resources.problemmarker");
                            MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, IXMLMarker.XML_WELLFORMEDNESS_PROBLEM);
                            MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, IXMLMarker.XML_VALIDITY_PROBLEM);
                            MarkerJob.INSTANCE.addDeleteMarkerTask((IResource)file, IXMLMarker.XML_INTEGRITY_PROBLEM);
                        }
                        int maxCount = (extendedResource = ExtendedResourceAdapterFactory.INSTANCE.adapt((Notifier)resource)) != null ? (Integer)extendedResource.getProblemHandlingOptions().get("MAX_PROBLEM_MARKER_COUNT") : ExtendedResource.OPTION_MAX_PROBLEM_MARKER_COUNT_UNLIMITED;
                        int count = 0;
                        ArrayList safeErrors = new ArrayList(resource.getErrors());
                        Iterator iter = safeErrors.iterator();
                        while (iter.hasNext() && count != maxCount) {
                            try {
                                ResourceProblemMarkerService.this.createProblemMarkerForDiagnostic(file, extendedResource, (Resource.Diagnostic)iter.next(), 2);
                            }
                            catch (Exception ex) {
                                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                            }
                            ++count;
                        }
                        ArrayList safeWarnings = new ArrayList(resource.getWarnings());
                        Iterator iter2 = safeWarnings.iterator();
                        while (iter2.hasNext() && count != maxCount) {
                            try {
                                ResourceProblemMarkerService.this.createProblemMarkerForDiagnostic(file, extendedResource, (Resource.Diagnostic)iter2.next(), 1);
                            }
                            catch (Exception ex) {
                                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                            }
                            ++count;
                        }
                    }
                    progress.worked(1);
                    if (!progress.isCanceled()) continue;
                    throw new OperationCanceledException();
                }
            }
        };
        if (editingDomain != null) {
            try {
                editingDomain.runExclusive(runnable);
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
            }
        } else {
            runnable.run();
        }
    }

    protected void createProblemMarkerForDiagnostic(IFile file, ExtendedResource extendedResource, Resource.Diagnostic diagnostic, int severity) throws CoreException {
        Assert.isNotNull((Object)file);
        Assert.isNotNull((Object)diagnostic);
        HashMap<String, Object> attributes = new HashMap<String, Object>();
        attributes.put("transient", Boolean.TRUE);
        int line = diagnostic.getLine();
        attributes.put("lineNumber", line > 0 ? line : 1);
        attributes.put("location", NLS.bind((String)Messages.attribute_line, (Object)line));
        attributes.put("severity", severity);
        String type = "org.eclipse.core.resources.problemmarker";
        if (diagnostic instanceof XMIException) {
            XMIException xmiException = (XMIException)diagnostic;
            if (xmiException.getCause() instanceof XMLWellformednessException) {
                String format = extendedResource != null ? (String)extendedResource.getProblemHandlingOptions().get("XML_WELLFORMEDNESS_PROBLEM_FORMAT_STRING") : null;
                attributes.put("message", this.createProblemMarkerMessage(format, (Exception)xmiException));
                type = IXMLMarker.XML_WELLFORMEDNESS_PROBLEM;
            } else if (xmiException.getCause() instanceof XMLValidityException || xmiException.getCause() instanceof SAXParseException && xmiException.getMessage().contains("cvc-")) {
                Integer resourceDefinedSeverity;
                Integer n = resourceDefinedSeverity = extendedResource != null ? (Integer)extendedResource.getProblemHandlingOptions().get("XML_VALIDITY_PROBLEM_SEVERITY") : null;
                if (resourceDefinedSeverity != null) {
                    attributes.put("severity", resourceDefinedSeverity);
                }
                String format = extendedResource != null ? (String)extendedResource.getProblemHandlingOptions().get("XML_VALIDITY_PROBLEM_FORMAT_STRING") : null;
                attributes.put("message", this.createProblemMarkerMessage(format, (Exception)xmiException));
                type = IXMLMarker.XML_VALIDITY_PROBLEM;
            } else if (xmiException instanceof XMLIntegrityException) {
                attributes.put("message", this.createProblemMarkerMessage((Exception)xmiException));
                type = IXMLMarker.XML_INTEGRITY_PROBLEM;
            } else if (xmiException instanceof ProxyURIIntegrityException) {
                attributes.put("message", this.createProblemMarkerMessage((Exception)xmiException));
                type = PROXY_URI_INTEGRITY_PROBLEM;
            } else {
                attributes.put("message", this.createProblemMarkerMessage((Exception)xmiException));
            }
        } else {
            attributes.put("message", diagnostic.getMessage());
        }
        if (file.isAccessible()) {
            MarkerJob.INSTANCE.addCreateMarkerTask((IResource)file, type, attributes);
        } else {
            Integer effectiveSeverity = (Integer)attributes.get("severity");
            String effectiveMessage = (String)attributes.get("message");
            if (effectiveSeverity == 2) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)effectiveMessage);
            } else if (effectiveSeverity == 1) {
                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)effectiveMessage);
            } else if (effectiveSeverity == 0) {
                PlatformLogUtil.logAsInfo((Plugin)Activator.getPlugin(), (Object)effectiveMessage);
            }
        }
    }

    protected void createProblemMarkerForException(IFile file, Exception exception, int severity) throws CoreException {
        Assert.isNotNull((Object)file);
        Assert.isNotNull((Object)exception);
        HashMap<String, Object> attributes = new HashMap<String, Object>();
        attributes.put("transient", Boolean.TRUE);
        attributes.put("lineNumber", 1);
        attributes.put("location", NLS.bind((String)Messages.attribute_line, (Object)1));
        attributes.put("severity", severity);
        attributes.put("message", this.createProblemMarkerMessage(exception));
        String type = "org.eclipse.core.resources.problemmarker";
        if (file.isAccessible()) {
            MarkerJob.INSTANCE.addCreateMarkerTask((IResource)file, type, attributes);
        } else {
            Integer effectiveSeverity = (Integer)attributes.get("severity");
            String effectiveMessage = (String)attributes.get("message");
            if (effectiveSeverity == 2) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)effectiveMessage);
            } else if (effectiveSeverity == 1) {
                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)effectiveMessage);
            } else if (effectiveSeverity == 0) {
                PlatformLogUtil.logAsInfo((Plugin)Activator.getPlugin(), (Object)effectiveMessage);
            }
        }
    }

    protected String createProblemMarkerMessage(Exception exception) {
        String causeMsg;
        Assert.isNotNull((Object)exception);
        StringBuilder msg = new StringBuilder();
        msg.append(exception.getLocalizedMessage());
        Throwable cause = exception.getCause();
        if (cause != null && (causeMsg = cause.getLocalizedMessage()) != null && causeMsg.length() > 0 && !msg.toString().contains(causeMsg)) {
            msg.append(": ");
            msg.append(causeMsg);
        }
        return msg.toString();
    }

    protected String createProblemMarkerMessage(String format, Exception exception) {
        Assert.isNotNull((Object)exception);
        String msg = this.createProblemMarkerMessage(exception);
        if (format == null) {
            return msg;
        }
        if (format.contains("{0}")) {
            return NLS.bind((String)format, (Object)msg);
        }
        if (!format.endsWith(" ")) {
            format.concat(" ");
        }
        return format.concat(msg);
    }
}

