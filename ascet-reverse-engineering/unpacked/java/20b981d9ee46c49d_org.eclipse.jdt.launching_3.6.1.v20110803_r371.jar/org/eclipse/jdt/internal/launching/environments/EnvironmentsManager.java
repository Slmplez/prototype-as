/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$PreferenceChangeEvent
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.debug.core.DebugPlugin
 */
package org.eclipse.jdt.internal.launching.environments;

import com.ibm.icu.text.MessageFormat;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.DocumentBuilder;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.environments.AccessRuleParticipant;
import org.eclipse.jdt.internal.launching.environments.Analyzer;
import org.eclipse.jdt.internal.launching.environments.ExecutionEnvironment;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstallChangedListener;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.PropertyChangeEvent;
import org.eclipse.jdt.launching.VMStandin;
import org.eclipse.jdt.launching.environments.CompatibleEnvironment;
import org.eclipse.jdt.launching.environments.IAccessRuleParticipant;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class EnvironmentsManager
implements IExecutionEnvironmentsManager,
IVMInstallChangedListener,
IEclipsePreferences.IPreferenceChangeListener {
    private static final String ANALYZER_ELEMENT = "analyzer";
    static final String ENVIRONMENT_ELEMENT = "environment";
    static final String RULE_PARTICIPANT_ELEMENT = "ruleParticipant";
    private static EnvironmentsManager fgManager = null;
    private static final String PREF_DEFAULT_ENVIRONMENTS_XML = "org.eclipse.jdt.launching.PREF_DEFAULT_ENVIRONMENTS_XML";
    private List fEnvironments = null;
    private Set fRuleParticipants = null;
    private Map fEnvironmentsMap = null;
    private Map fAnalyzers = null;
    private boolean fIsUpdatingDefaults = false;
    private boolean fInitializedCompatibilities = false;
    private static final String VM_ID = "vmId";
    private static final String ENVIRONMENT_ID = "environmentId";
    private static final String DEFAULT_ENVIRONMENT = "defaultEnvironment";
    private static final String DEFAULT_ENVIRONMENTS = "defaultEnvironments";

    public static EnvironmentsManager getDefault() {
        if (fgManager == null) {
            fgManager = new EnvironmentsManager();
        }
        return fgManager;
    }

    private EnvironmentsManager() {
        JavaRuntime.addVMInstallChangedListener(this);
        InstanceScope.INSTANCE.getNode("org.eclipse.jdt.launching").addPreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)this);
    }

    public synchronized IExecutionEnvironment[] getExecutionEnvironments() {
        this.initializeExtensions();
        return this.fEnvironments.toArray(new IExecutionEnvironment[this.fEnvironments.size()]);
    }

    public synchronized IAccessRuleParticipant[] getAccessRuleParticipants() {
        this.initializeExtensions();
        return this.fRuleParticipants.toArray(new IAccessRuleParticipant[this.fRuleParticipants.size()]);
    }

    public synchronized IExecutionEnvironment getEnvironment(String id) {
        this.initializeExtensions();
        return (IExecutionEnvironment)this.fEnvironmentsMap.get(id);
    }

    public synchronized Analyzer[] getAnalyzers() {
        this.initializeExtensions();
        Collection collection = this.fAnalyzers.values();
        return collection.toArray(new Analyzer[collection.size()]);
    }

    private synchronized void initializeExtensions() {
        if (this.fEnvironments == null) {
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.jdt.launching", "executionEnvironments");
            IConfigurationElement[] configs = extensionPoint.getConfigurationElements();
            this.fEnvironments = new ArrayList();
            this.fRuleParticipants = new LinkedHashSet();
            this.fEnvironmentsMap = new HashMap(configs.length);
            this.fAnalyzers = new HashMap(configs.length);
            int i = 0;
            while (i < configs.length) {
                String id;
                IConfigurationElement element = configs[i];
                String name = element.getName();
                if (name.equals(ENVIRONMENT_ELEMENT)) {
                    id = element.getAttribute("id");
                    if (id == null) {
                        LaunchingPlugin.log(MessageFormat.format((String)"Execution environment must specify \"id\" attribute. Contributed by {0}.", (Object[])new String[]{element.getContributor().getName()}));
                    } else {
                        ExecutionEnvironment env = new ExecutionEnvironment(element);
                        this.fEnvironments.add(env);
                        this.fEnvironmentsMap.put(id, env);
                    }
                } else if (name.equals(ANALYZER_ELEMENT)) {
                    id = element.getAttribute("id");
                    if (id == null) {
                        LaunchingPlugin.log(MessageFormat.format((String)"Execution environment analyzer must specify \"id\" attribute. Contributed by {0}", (Object[])new String[]{element.getContributor().getName()}));
                    } else {
                        this.fAnalyzers.put(id, new Analyzer(element));
                    }
                } else if (name.equals(RULE_PARTICIPANT_ELEMENT)) {
                    id = element.getAttribute("id");
                    if (id == null) {
                        LaunchingPlugin.log(MessageFormat.format((String)"Execution environment rule participant must specify \"id\" attribute. Contributed by {0}", (Object[])new String[]{element.getContributor().getName()}));
                    } else {
                        this.fRuleParticipants.add(new AccessRuleParticipant(element));
                    }
                }
                ++i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void initializeCompatibilities() {
        IVMInstallType[] installTypes = JavaRuntime.getVMInstallTypes();
        EnvironmentsManager environmentsManager = this;
        synchronized (environmentsManager) {
            if (!this.fInitializedCompatibilities) {
                this.fInitializedCompatibilities = true;
                int i = 0;
                while (i < installTypes.length) {
                    IVMInstallType type = installTypes[i];
                    IVMInstall[] installs = type.getVMInstalls();
                    int j = 0;
                    while (j < installs.length) {
                        IVMInstall install = installs[j];
                        this.analyze(install, (IProgressMonitor)new NullProgressMonitor());
                        ++j;
                    }
                    ++i;
                }
                this.initializeDefaultVMs();
            }
        }
    }

    private synchronized void initializeDefaultVMs() {
        String xml = InstanceScope.INSTANCE.getNode("org.eclipse.jdt.launching").get(PREF_DEFAULT_ENVIRONMENTS_XML, "");
        try {
            if (xml.length() > 0) {
                DocumentBuilder parser = LaunchingPlugin.getParser();
                Document document = parser.parse(new ByteArrayInputStream(xml.getBytes()));
                Element envs = document.getDocumentElement();
                NodeList list = envs.getChildNodes();
                int length = list.getLength();
                int i = 0;
                while (i < length) {
                    Element element;
                    Node node = list.item(i);
                    short type = node.getNodeType();
                    if (type == 1 && (element = (Element)node).getNodeName().equals(DEFAULT_ENVIRONMENT)) {
                        IVMInstall vm;
                        String envId = element.getAttribute(ENVIRONMENT_ID);
                        String vmId = element.getAttribute(VM_ID);
                        ExecutionEnvironment environment = (ExecutionEnvironment)this.getEnvironment(envId);
                        if (environment != null && (vm = JavaRuntime.getVMFromCompositeId(vmId)) != null) {
                            environment.initDefaultVM(vm);
                        }
                    }
                    ++i;
                }
            }
        }
        catch (CoreException e) {
            LaunchingPlugin.log(e);
        }
        catch (SAXException e) {
            LaunchingPlugin.log(e);
        }
        catch (IOException e) {
            LaunchingPlugin.log(e);
        }
    }

    private String getDefatulVMsAsXML() {
        int count = 0;
        try {
            Document doc = DebugPlugin.newDocument();
            Element envs = doc.createElement(DEFAULT_ENVIRONMENTS);
            doc.appendChild(envs);
            IExecutionEnvironment[] environments = this.getExecutionEnvironments();
            int i = 0;
            while (i < environments.length) {
                IExecutionEnvironment env = environments[i];
                IVMInstall vm = env.getDefaultVM();
                if (vm != null) {
                    ++count;
                    Element element = doc.createElement(DEFAULT_ENVIRONMENT);
                    element.setAttribute(ENVIRONMENT_ID, env.getId());
                    element.setAttribute(VM_ID, JavaRuntime.getCompositeIdFromVM(vm));
                    envs.appendChild(element);
                }
                ++i;
            }
            if (count > 0) {
                return DebugPlugin.serializeDocument((Document)doc);
            }
        }
        catch (CoreException e) {
            LaunchingPlugin.log(e);
        }
        return "";
    }

    private void analyze(IVMInstall vm, IProgressMonitor monitor) {
        Analyzer[] analyzers = this.getAnalyzers();
        int i = 0;
        while (i < analyzers.length) {
            Analyzer analyzer = analyzers[i];
            try {
                CompatibleEnvironment[] environments = analyzer.analyze(vm, monitor);
                int j = 0;
                while (j < environments.length) {
                    CompatibleEnvironment compatibleEnvironment = environments[j];
                    ExecutionEnvironment environment = (ExecutionEnvironment)compatibleEnvironment.getCompatibleEnvironment();
                    environment.add(vm, compatibleEnvironment.isStrictlyCompatbile());
                    ++j;
                }
            }
            catch (CoreException e) {
                LaunchingPlugin.log(e);
            }
            ++i;
        }
    }

    public void defaultVMInstallChanged(IVMInstall previous, IVMInstall current) {
    }

    public synchronized void vmChanged(PropertyChangeEvent event) {
        IVMInstall vm = (IVMInstall)event.getSource();
        if (vm instanceof VMStandin) {
            return;
        }
        this.vmRemoved(vm);
        this.vmAdded(vm);
    }

    public synchronized void vmAdded(IVMInstall vm) {
        if (vm instanceof VMStandin) {
            return;
        }
        this.analyze(vm, (IProgressMonitor)new NullProgressMonitor());
    }

    public synchronized void vmRemoved(IVMInstall vm) {
        if (vm instanceof VMStandin) {
            return;
        }
        IExecutionEnvironment[] environments = this.getExecutionEnvironments();
        int i = 0;
        while (i < environments.length) {
            ExecutionEnvironment environment = (ExecutionEnvironment)environments[i];
            environment.remove(vm);
            ++i;
        }
    }

    synchronized void updateDefaultVMs() {
        try {
            this.fIsUpdatingDefaults = true;
            InstanceScope.INSTANCE.getNode("org.eclipse.jdt.launching").put(PREF_DEFAULT_ENVIRONMENTS_XML, this.getDefatulVMsAsXML());
        }
        finally {
            this.fIsUpdatingDefaults = false;
        }
    }

    public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
        if (this.fIsUpdatingDefaults) {
            return;
        }
        if (event.getKey().equals(PREF_DEFAULT_ENVIRONMENTS_XML)) {
            this.initializeDefaultVMs();
        }
    }
}

