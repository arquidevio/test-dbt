#load "../dbt/fsx/types.fsx"
#load "../dbt/fsx/plan.fsx"
#load "../dbt/fsx/dotnet/project.fsx"
#load "../dbt/fsx/bicep/project.fsx"


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
}

|> Plan.evaluate
|> fun x -> printfn "%A" x
