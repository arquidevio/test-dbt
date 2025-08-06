#load "/work/dbt/fsx/types.fsx"
#load "/work/dbt/fsx/plan.fsx"
//#load "/work/dbt/fsx/dotnet/solution.fsx"
#load "/work/dbt/fsx/dotnet/project.fsx"
#load "/work/dbt/fsx/node/project.fsx"


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
}

|> Plan.evaluate
|> fun x -> printfn "%A" x
