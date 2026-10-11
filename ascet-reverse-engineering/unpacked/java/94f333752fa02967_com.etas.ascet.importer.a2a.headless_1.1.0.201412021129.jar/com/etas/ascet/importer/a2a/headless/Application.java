/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.etas.ascet.importer.a2a.AutosarVersion
 *  com.etas.ascet.importer.a2a.Converter
 *  com.etas.ascet.importer.a2a.config.ConverterConfig
 *  com.etas.ascet.importer.a2a.config.IConfig
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 */
package com.etas.ascet.importer.a2a.headless;

import com.etas.ascet.importer.a2a.AutosarVersion;
import com.etas.ascet.importer.a2a.Converter;
import com.etas.ascet.importer.a2a.config.ConverterConfig;
import com.etas.ascet.importer.a2a.config.IConfig;
import com.etas.ascet.importer.a2a.headless.Activator;
import com.etas.ascet.importer.a2a.headless.ArgsParser;
import java.io.FileNotFoundException;
import java.util.List;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;

public class Application
implements IApplication {
    public Object start(IApplicationContext context) throws Exception {
        if (context.getArguments().containsKey("application.args")) {
            String[] args = (String[])context.getArguments().get("application.args");
            ConverterConfig config = this.processCommandLine(args);
            if (config == null) {
                return -1;
            }
            try {
                AutosarVersion ver = Converter.checkValidVersion((List)config.getInputFiles());
                if (ver != AutosarVersion.UNKNOWN && ver != AutosarVersion.INCONSISTENT) {
                    Converter converter = ver.getConverter();
                    converter.setConfig((IConfig)config);
                    converter.run();
                }
                if (ver == AutosarVersion.UNKNOWN) {
                    System.out.println("[ERROR] could not determine autosar version");
                    return -1;
                }
                if (ver == AutosarVersion.INCONSISTENT) {
                    System.out.println("[ERROR] constraint violated; all input files must belong to the same AUTOSAR version");
                    return -1;
                }
            }
            catch (InstantiationException e) {
                e.printStackTrace();
            }
            catch (IllegalAccessException e) {
                e.printStackTrace();
            }
            catch (FileNotFoundException e) {
                System.out.println("[ERROR] file not found " + e.getMessage());
                return -1;
            }
        }
        return IApplication.EXIT_OK;
    }

    protected ConverterConfig processCommandLine(String[] args) {
        ArgsParser parser = new ArgsParser();
        ConverterConfig config = new ConverterConfig();
        config.setNameSpaceRequired(false);
        config.setTransferRequired(false);
        config.setProjectsRequired(false);
        IEclipsePreferences preferenceStore = Activator.getDefault().getPreferenceStore();
        config.setAsError(preferenceStore.get("AsError", ""));
        config.setAsWarning(preferenceStore.get("AsWarning", "2002"));
        parser.parse(args, config);
        if (config.getInputFiles().isEmpty()) {
            System.out.println("ERROR: at least one input file must be given");
            parser.printUsage();
            return null;
        }
        if (config.getOutputFolder() == null || config.getOutputFolder().isEmpty()) {
            System.out.println("ERROR: output folder is mandetory");
            parser.printUsage();
            return null;
        }
        return config;
    }

    public void stop() {
    }
}

