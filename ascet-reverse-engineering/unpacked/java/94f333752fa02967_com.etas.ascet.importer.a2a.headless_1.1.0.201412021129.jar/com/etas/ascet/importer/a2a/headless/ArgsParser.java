/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.etas.ascet.importer.a2a.config.ConverterConfig
 */
package com.etas.ascet.importer.a2a.headless;

import com.etas.ascet.importer.a2a.config.ConverterConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class ArgsParser {
    private static final String OUTDIR_OPT_DIR = "-outdir";
    private static final String FILE_OPT_ID = "-file";
    private static final String NAME_SPACES_OPT_ID = "-namespaces";
    private static final String PROJECTS_OPT_ID = "-projects";
    private static final String TRANSFER_OPT_ID = "-transfer";
    private static final String INV_OPT_ID = "-inv";

    public void parse(String[] args, ConverterConfig config) {
        int i = 0;
        while (i < args.length) {
            String argument = args[i];
            if (argument.equalsIgnoreCase(FILE_OPT_ID)) {
                config.addInputFile(new File(args[i + 1]));
                ++i;
            } else if (argument.equalsIgnoreCase(OUTDIR_OPT_DIR)) {
                config.setOutputFolder(args[i + 1]);
                ++i;
            } else if (argument.equalsIgnoreCase(INV_OPT_ID)) {
                try {
                    String[] invArgs = this.readInvocationFile(args[i + 1]);
                    this.parse(invArgs, config);
                }
                catch (IOException iOException) {
                    System.out.println("ERROR: could not open invocation file " + args[i + 1]);
                }
                ++i;
            } else if (argument.equalsIgnoreCase(TRANSFER_OPT_ID)) {
                config.setTransferRequired(true);
            } else if (argument.equalsIgnoreCase(PROJECTS_OPT_ID)) {
                config.setProjectsRequired(true);
            } else if (argument.equalsIgnoreCase(NAME_SPACES_OPT_ID)) {
                config.setNameSpaceRequired(true);
            } else if (argument.equalsIgnoreCase("-NOtransfer")) {
                config.setTransferRequired(false);
            } else if (argument.equalsIgnoreCase("-NOprojects")) {
                config.setProjectsRequired(false);
            } else if (argument.equalsIgnoreCase("-NOnamespaces")) {
                config.setNameSpaceRequired(false);
            }
            ++i;
        }
    }

    private String[] readInvocationFile(String file) throws IOException {
        String line;
        BufferedReader reader = new BufferedReader(new FileReader(file));
        ArrayList<String> args = new ArrayList<String>();
        while ((line = reader.readLine()) != null) {
            Scanner scanner = new Scanner(line);
            scanner.useDelimiter("\"");
            int i = 0;
            while (scanner.hasNext()) {
                String token = scanner.next();
                if (i % 2 == 0) {
                    String[] split;
                    String[] stringArray = split = token.split("\\s+");
                    int n = split.length;
                    int n2 = 0;
                    while (n2 < n) {
                        String s = stringArray[n2];
                        args.add(s);
                        ++n2;
                    }
                } else {
                    args.add(token);
                }
                ++i;
            }
        }
        return args.toArray(new String[args.size()]);
    }

    public void printUsage() {
        System.out.println("Usage:");
        System.out.println("A2AImporter.exe (-projects|-namespaces|-transfer|-inv f)* -outdir path (-file f)+");
        System.out.println("\t-projects    - request to create a project for each ASWC");
        System.out.println("\t-namespaces  - import name spaces");
        System.out.println("\t-transfer    - import the converted AMD-files into the current ASCET database/workspace");
        System.out.println("\t-outdir d    - specify the output folder");
        System.out.println("\t-inv f       - specify the invocation file, which can contain further options");
        System.out.println("\t-file f      - specify the input file. can be used multiple times");
        System.out.println(" Example:\n\tA2AImporter.exe -nosplash -application com.etas.ascet.importer.a2a.headless.appl -outdir C:\\temp\\headless -transfer -projects -nameSpaces -file C:\\workspace\\autosar_types.arxml -file C:\\workspace\\SoftwareComponent.arxml");
    }
}

