/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.etas.amd.core.type.AmdNumericType
 *  com.etas.amd.core.util.AbstractAmdComponent
 *  com.etas.amd.core.util.AbstractAmdItem
 *  com.etas.amd.core.util.AmdASWCType
 *  com.etas.amd.core.util.AmdFactory
 *  com.etas.amd.core.util.AmdFormulaFactory
 *  com.etas.amd.core.util.AmdProject
 *  com.etas.amd620.core.ComponentImplementation.ImplementationEntryT
 *  com.etas.amd620.core.ComponentMain.ElementAttributesT
 *  com.etas.amd620.core.ComponentMain.ElementT
 *  com.etas.ascet.webservice.AscetTransfer
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 *  gautosar.gswcomponents.gportinterface.GArgumentDirectionEnum
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package com.etas.ascet.importer.a2a;

import com.etas.amd.core.type.AmdNumericType;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd.core.util.AbstractAmdItem;
import com.etas.amd.core.util.AmdASWCType;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd.core.util.AmdFormulaFactory;
import com.etas.amd.core.util.AmdProject;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ElementT;
import com.etas.ascet.importer.a2a.AutosarVersion;
import com.etas.ascet.importer.a2a.ProgressCalculator;
import com.etas.ascet.importer.a2a.StandaloneResourceSet;
import com.etas.ascet.importer.a2a.config.IConfig;
import com.etas.ascet.importer.a2a.exceptions.InvalidOperationInvokedException;
import com.etas.ascet.importer.a2a.logger.Logger;
import com.etas.ascet.importer.a2a.util.ConverterContext;
import com.etas.ascet.webservice.AscetTransfer;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
import gautosar.gswcomponents.gportinterface.GArgumentDirectionEnum;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent;
import java.io.File;
import java.io.FileNotFoundException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.xml.namespace.QName;
import javax.xml.stream.FactoryConfigurationError;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.transform.stream.StreamSource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class Converter {
    public static final String CM_TEXTTABLE = "TEXTTABLE";
    public static final String CM_IDENTITY = "IDENTICAL";
    public static final String CM_LINEAR = "LINEAR";
    public static final String CM_RATFUNC = "RATFUNC";
    public static final String AR_CAT_BOOLEAN = "BOOLEAN";
    public static final String AR_CAT_STRUCTURE = "STRUCTURE";
    public static final String AR_CAT_ARRAY = "ARRAY";
    public static final String AR_CAT_TYPE_REFERENCE = "TYPE_REFERENCE";
    public static final String AR_CAT_VALUE = "VALUE";
    protected static final String DEFAULT_DATA_SET = "Data";
    public static final String APP_ERROR_SUFFIX = "_AppError";
    protected IConfig config;
    protected IProgressMonitor progress;
    protected long startTimeMillis;
    protected AmdFormulaFactory amdFormulaFactory;
    protected AutosarVersion autosarVersion;
    protected StandaloneResourceSet resSet;
    protected ConverterContext context;

    public void setConfig(IConfig configuration) {
        this.config = configuration;
    }

    public void setProgress(IProgressMonitor progress) {
        this.progress = progress;
    }

    public void initConversion() {
        File dir;
        this.resSet = new StandaloneResourceSet();
        this.context = new ConverterContext();
        this.context.setLogger(new Logger(this.config.getAsError(), this.config.getAsWarning()));
        Assert.isTrue((this.context.getLogger() != null ? 1 : 0) != 0);
        this.context.getFormulae().getFormula().add((Object)AmdFormulaFactory.createIdentFormula());
        if (this.progress == null) {
            this.progress = new NullProgressMonitor();
        }
        if ((dir = new File(this.config.getOutputFolder())).exists()) {
            if (dir.isFile()) {
                this.context.getLogger().reportOutputFolderInvalid(dir.getAbsolutePath().replaceAll("\\\\", "/"));
                if (!this.context.getLogger().hasErrors()) {
                    dir.delete();
                }
            } else if (dir.listFiles().length > 0) {
                this.context.getLogger().reportOutputFolderNotEmpty(dir.getAbsolutePath().replaceAll("\\\\", "/"));
                if (!this.context.getLogger().hasErrors()) {
                    Converter.deleteDir(dir);
                }
            }
        }
    }

    protected void finalizeConversion() {
        this.context.getLogger().info("store generated amd-files");
        this.progress.subTask("storing converted amd files");
        String outputFolder = this.config.getOutputFolder();
        ProgressCalculator progressCalc = new ProgressCalculator(this.context.getAmdCollection().getSize(), 20);
        for (String packageRef : this.context.getAmdCollection().getAllReferences()) {
            AbstractAmdItem comp = this.context.getAmdCollection().get(packageRef);
            if (this.config.isNameSpaceRequired()) {
                comp.setPackageName(packageRef);
            }
            comp.save(outputFolder);
            this.progress.worked(progressCalc.amountPerWorkItem());
        }
        this.progress.worked(progressCalc.amountForRest());
        this.context.getLogger().info("store generated amd-files done");
        if (this.config.isProjectsRequired()) {
            this.context.getLogger().info("create projects");
            this.progress.subTask("creating projects");
            boolean createdProjects = false;
            for (AbstractAmdComponent comp : this.context.getAmdComponents()) {
                if (!(comp instanceof AmdASWCType)) continue;
                AmdProject proj = new AmdProject(String.valueOf(comp.getName()) + "P", null, comp.getNameSpace(), this.autosarVersion.getAsdOSID(), this.context.getFormulae());
                proj.addComplexElement(comp.getName(), String.valueOf(comp.getNameSpace()) + "/" + comp.getName());
                proj.addDT();
                proj.save(outputFolder);
                createdProjects = true;
            }
            if (!createdProjects && !this.context.getFormulae().getFormula().isEmpty()) {
                AmdProject proj = new AmdProject("FormulaeCollector", null, "/Main", this.autosarVersion.getAsdOSID(), this.context.getFormulae());
                proj.save(outputFolder);
            }
            this.context.getLogger().info("create projects done");
        }
        if (this.config.isTransferRequired() && !this.context.getLogger().hasErrors()) {
            this.progress.subTask("transfering converted AMD model to ASCET");
            try {
                this.context.getLogger().info("transfer to ASCET");
                AscetTransfer.transferToAscet((String)this.config.getOutputFolder());
                this.context.getLogger().info("transfer to ASCET done");
            }
            catch (Exception exception) {
                this.context.getLogger().warn("transfer to ASCET failed; looks like there is no ASCET instance running");
            }
        }
        progressCalc = new ProgressCalculator(1, 30);
        this.progress.worked(progressCalc.amountPerWorkItem());
    }

    protected boolean loadAutosarModel() {
        this.context.getLogger().info("loading AUTOSAR MODEL ...");
        this.progress.subTask("loading AUTOSAR MODEL");
        List<File> inputFiles = this.config.getInputFiles();
        ProgressCalculator progressCalc = new ProgressCalculator(inputFiles.size(), 10);
        for (File path : inputFiles) {
            this.context.getLogger().info("loading file [" + path + "]");
            this.resSet.getResource(URI.createFileURI((String)path.getAbsolutePath()), true);
            if (this.progress.isCanceled()) {
                return false;
            }
            this.progress.worked(progressCalc.amountPerWorkItem());
        }
        this.progress.worked(progressCalc.amountForRest());
        this.context.getLogger().info("loading AUTOSAR MODEL done");
        return true;
    }

    public IStatus run() {
        this.initConversion();
        if (this.context.getLogger().hasErrors()) {
            this.context.getLogger().info("conversion aborted with errors");
            return Status.CANCEL_STATUS;
        }
        try {
            this.startTimeMillis = System.currentTimeMillis();
            this.context.getLogger().info("found AUTOSAR version: " + this.autosarVersion.toString());
            this.context.getLogger().info("start conversion at: " + this.getTimeStr());
            this.progress.beginTask("A2A conversion", 1000000);
            this.setupAutosarVersion();
            if (!this.loadAutosarModel()) {
                this.context.getLogger().info("conversion canceled");
                IStatus iStatus = Status.CANCEL_STATUS;
                return iStatus;
            }
            this.context.getLogger().info("browse over AUTOSAR packages ...");
            if (!this.convert()) {
                this.context.getLogger().info("conversion canceled");
                IStatus iStatus = Status.CANCEL_STATUS;
                return iStatus;
            }
            this.context.getLogger().info("browse over AUTOSAR packages done");
            this.finalizeConversion();
            this.unloadAutosarModel();
            long duration = System.currentTimeMillis() - this.startTimeMillis;
            String lastText = this.context.getLogger().hasErrors() ? "conversion aborted with errors" : "conversion completed";
            this.context.getLogger().info(lastText);
            this.context.getLogger().info("finished at: " + this.getTimeStr());
            this.context.getLogger().info("conversion time = " + String.valueOf(duration) + " ms");
            IStatus iStatus = this.context.getLogger().hasErrors() ? Status.CANCEL_STATUS : Status.OK_STATUS;
            return iStatus;
        }
        finally {
            this.progress.done();
        }
    }

    protected abstract void setupAutosarVersion();

    protected abstract boolean convert();

    protected String getTimeStr() {
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String current_time = format.format(date);
        return current_time;
    }

    protected void unloadAutosarModel() {
        for (Resource res : this.resSet.getResources()) {
            try {
                res.unload();
            }
            catch (UnsupportedOperationException unsupportedOperationException) {}
        }
    }

    protected String getARPath(GIdentifiable obj) {
        if (obj != null) {
            String ref = EcoreUtil.getURI((EObject)obj).toString();
            return ref.substring(ref.indexOf(35) + 1, ref.indexOf(63));
        }
        return "";
    }

    protected String getNameSpace(GIdentifiable obj) {
        String arPath = this.getARPath(obj);
        if (arPath != null) {
            return arPath.substring(0, arPath.lastIndexOf(obj.gGetShortName()) - 1);
        }
        return "";
    }

    protected String getUnitRef(GCompuMethod cm) {
        if (this.config.isNameSpaceRequired()) {
            GUnit gGetUnit = cm.gGetUnit();
            return gGetUnit != null ? this.getARPath((GIdentifiable)gGetUnit) : "";
        }
        return "";
    }

    protected void addComponent(AbstractAmdComponent c) {
        this.context.getAmdComponents().add(c);
    }

    protected void addRunnableToSpec(AmdASWCType comp, String runName, String specName) {
        if (comp.hasMethodInSpec(runName, specName)) {
            this.context.getLogger().warn("Runnable " + runName + " exists alrady in ASWC " + comp.getName());
        } else {
            comp.addRunnableToSpecification(runName, specName);
        }
    }

    public static boolean deleteDir(File file) {
        if (file.isDirectory()) {
            String[] children = file.list();
            int i = 0;
            while (i < children.length) {
                boolean success = Converter.deleteDir(new File(file, children[i]));
                if (!success) {
                    return false;
                }
                ++i;
            }
        }
        return file.delete();
    }

    public static AutosarVersion checkValidVersion(List<File> files) throws FileNotFoundException {
        AutosarVersion result = AutosarVersion.UNKNOWN;
        for (File path : files) {
            if (!path.exists()) {
                Logger logger = new Logger("", "");
                logger.error("cannot find file [" + path.getAbsolutePath() + "]");
                throw new FileNotFoundException(path.getAbsolutePath());
            }
            AutosarVersion version = Converter.getAutosarVersion(path);
            if (version == AutosarVersion.UNKNOWN) {
                Logger logger = new Logger("", "");
                logger.error("cannot recognize format of file [" + path.getAbsolutePath() + "]");
                return AutosarVersion.UNKNOWN;
            }
            if (result == AutosarVersion.UNKNOWN) {
                result = version;
                continue;
            }
            if (result == version) continue;
            Logger logger = new Logger("", "");
            logger.error("file [" + path.getAbsolutePath() + "] has an ARXML version " + version.toString() + " but files before are belongig to ARXML version " + result.toString());
            return AutosarVersion.INCONSISTENT;
        }
        return result;
    }

    private static AutosarVersion getAutosarVersion(File path) {
        try {
            XMLInputFactory inputFactory = XMLInputFactory.newInstance();
            XMLStreamReader stax = inputFactory.createXMLStreamReader(new StreamSource(path));
            if (stax.hasNext() && stax.getEventType() == 7) {
                QName name;
                while (stax.getEventType() != 1 && stax.hasNext()) {
                    stax.next();
                }
                if (stax.getEventType() == 1 && stax.hasName() && (name = stax.getName()).getLocalPart().equals("AUTOSAR")) {
                    AutosarVersion version = AutosarVersion.getVersion(name.getNamespaceURI());
                    if (version.isValid()) {
                        return version;
                    }
                    int i = 0;
                    while (i < stax.getAttributeCount()) {
                        if (stax.getAttributeLocalName(i).equals("schemaLocation")) {
                            String schemaLocation = stax.getAttributeValue(i);
                            return AutosarVersion.getVersion(schemaLocation);
                        }
                        ++i;
                    }
                }
            }
        }
        catch (FactoryConfigurationError factoryConfigurationError) {
        }
        catch (XMLStreamException xMLStreamException) {}
        return AutosarVersion.UNKNOWN;
    }

    protected String getRunnableNameToCall(GOperationInvokedEvent opInvokedEvent) throws InvalidOperationInvokedException {
        try {
            return opInvokedEvent.gGetStartOnEvent().gGetShortName();
        }
        catch (NullPointerException nullPointerException) {
            throw new InvalidOperationInvokedException("START-ON-EVENT-REF is invalid");
        }
    }

    protected String getPortName(GOperationInvokedEvent opInvokedEvent) throws InvalidOperationInvokedException {
        try {
            return opInvokedEvent.gGetOperation().gGetContextPPort().gGetShortName();
        }
        catch (NullPointerException nullPointerException) {
            throw new InvalidOperationInvokedException("P-PORT-PROTOTYPE-REF is invalid");
        }
    }

    protected String getProvidedCSInterface(GOperationInvokedEvent opInvokedEvent) throws InvalidOperationInvokedException {
        try {
            return opInvokedEvent.gGetOperation().gGetContextPPort().gGetProvidedInterface().gGetShortName();
        }
        catch (NullPointerException nullPointerException) {
            throw new InvalidOperationInvokedException("P-PORT-PROTOTYPE-REF is invalid");
        }
    }

    protected void setAutosarDirection(ElementAttributesT attr, int d) {
        switch (GArgumentDirectionEnum.get((int)d)) {
            case IN: {
                AmdFactory.setDirectionAttributes((ElementAttributesT)attr, (boolean)true, (boolean)false);
                break;
            }
            case OUT: {
                AmdFactory.setDirectionAttributes((ElementAttributesT)attr, (boolean)false, (boolean)true);
                break;
            }
            default: {
                AmdFactory.setDirectionAttributes((ElementAttributesT)attr, (boolean)true, (boolean)true);
            }
        }
    }

    protected ElementAttributesT setDummyElementAttributes(AbstractAmdComponent parent, ElementT elem) {
        AmdNumericType amdType = AmdNumericType.createRealSingleType();
        if (amdType != null) {
            ElementAttributesT modelAttributes = amdType.createModelAttributes();
            elem.setElementAttributes(modelAttributes);
            ImplementationEntryT implAttributes = amdType.createImplAttributes(elem.getName());
            if (parent != null) {
                parent.addImplementation(implAttributes);
            }
            return modelAttributes;
        }
        return null;
    }

    public void setAutosarVersion(AutosarVersion autosarVersion) {
        this.autosarVersion = autosarVersion;
    }

    public StandaloneResourceSet getEmfRessourceSet() {
        return this.resSet;
    }
}

