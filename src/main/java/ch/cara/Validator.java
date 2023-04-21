package ch.cara;

import ch.ahdis.matchbox.engine.MatchboxEngine;

import java.io.File;
import java.io.FileInputStream;

class Validator {
    public static void main(String[] args) throws Exception {
        final MatchboxEngine matchboxEngine = new MatchboxEngine.MatchboxEngineBuilder().getEngineR4();

        /*final var file = new File("ch-emed-epr/output/package.tgz");
        try (final var is = new FileInputStream(file)) {
            matchboxEngine.loadPackage(is);
        }*/
        matchboxEngine.getIgLoader().loadIg(matchboxEngine.getIgs(), matchboxEngine.getBinaries(), "ch-emed-epr/output/package.tgz", true);
    }
}
