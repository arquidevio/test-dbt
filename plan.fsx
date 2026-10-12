#r "paket: github arquidevio/dbt"

#load "arquidevio/dbt/fsx/plan.fsx"
#load "arquidevio/dbt/fsx/dotnet/project.fsx"
#load "arquidevio/dbt/fsx/bicep/project.fsx"
#load "arquidevio/dbt/fsx/kustomize/project.fsx"

open Arquidev.Dbt

plan {
    profile {
        selector {
            required_when DotnetProject.isPublishable
            extend selector.defaults.dotnet.generic
        }
    }
    profile {
        id "nuget"
        selector.defaults.dotnet.nuget
    }
    profile {
        id "bicep"
        selector {
            discovery_root "bicep"
            extend selector.defaults.bicep.generic
        }
    }
    profile {
        id "kustomize"
        selector {
            discovery_root "kustomize"
            required_when (fun dir -> System.IO.Path.GetFileName(System.IO.Path.GetDirectoryName dir) = "envs")
            extend selector.defaults.kustomize.generic
        }
    }
}

|> Plan.evaluate
